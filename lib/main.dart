import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:musicvoc/application/adjust_volume_bloc/adjust_volume_bloc.dart';
import 'package:musicvoc/application/all_songs_bloc/all_songs_bloc.dart';
import 'package:musicvoc/application/favorite_songs_bloc/favorite_songs_bloc.dart';
import 'package:musicvoc/application/loop_and_shuffle_bloc/loop_and_shuffle_bloc.dart';
import 'package:musicvoc/application/mostly_played_bloc/mostly_played_bloc.dart';
import 'package:musicvoc/application/playlist_bloc/playlist_bloc.dart';
import 'package:musicvoc/application/recently_played_bloc/recently_played_bloc.dart';
import 'package:musicvoc/controllers/adjust_speed_text.dart';
import 'package:musicvoc/controllers/search_controller.dart';
import 'package:musicvoc/controllers/theme_change_controller.dart';
import 'package:musicvoc/core/theme.dart';
import 'package:musicvoc/presentation/splash_screen/splash_screen.dart';
import 'package:musicvoc/services/database/hive_register.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  hiveRegister();
  await themeController.loadTheme();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => SearchQueryController(),
          ),
          ChangeNotifierProvider(
            create: (context) => AdjustSpeedTextController(),
          ),
          ChangeNotifierProvider(
            create: (context) => ThemeChangeController(),
          ),
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => AllSongsBloc(),
            ),
            BlocProvider(
              create: (context) => LoopAndShuffleBloc(),
            ),
            BlocProvider(
              create: (context) => AdjustVolumeBloc(),
            ),
            BlocProvider(
              create: (context) => FavoriteSongsBloc(),
            ),
            BlocProvider(
              create: (context) => RecentlyPlayedBloc(),
            ),
            BlocProvider(
              create: (context) => PlaylistBloc(),
            ),
            BlocProvider(
              create: (context) => MostlyPlayedBloc(),
            ),
          ],
          child: Consumer<ThemeChangeController>(
              builder: (context, themeProvider, _) {
            return MaterialApp(
              title: 'MusicVoc',
              theme: MyThemes.lightMode,
              darkTheme: MyThemes.darkMode,
              themeMode:
                  themeProvider.isDarkTheme ? ThemeMode.light : ThemeMode.dark,
              home: const ScreenSplash(),
              debugShowCheckedModeBanner: false,
            );
          }),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:musicvoc/core/const_colors.dart';
// import 'package:musicvoc/domain/song_model.dart';
// import 'package:on_audio_query/on_audio_query.dart';

// class ScreenSplash extends StatelessWidget {
//   ScreenSplash({super.key});

//   final audioQuery = OnAudioQuery();
//   List<SongModel> fetchSongs = [];
//   List<SongModel> allSongs = [];

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Container(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: [
//                 kMainSkyBlueColor,
//                 kMainBlueColor,
//               ]),
//         ),
//         child: Center(
//           child: Image.asset(
//             height: 300.h,
//             width: 150.w,
//             'assets/musicvocsplashlogo.png',
//           ),
//         ),
//       ),
//     );
//   }

//   void requestStoragePermission() async {
//     bool permissionStatus = await audioQuery.permissionsStatus();

//     if (!permissionStatus) {
//       await audioQuery.permissionsRequest();

//       fetchSongs = await audioQuery.querySongs();
//       for (var item in fetchSongs) {
//         if (item.fileExtension == 'mp3') {
//           allSongs.add(item);
//         }
//       }

//       for (var item in allSongs) {
//         SongsModel(
//           title: item.title,
//           artist: item.artist!,
//           duration: item.duration!,
//           songUri: item.uri!,
//           id: item.id,
//         );
//       }
//     }
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musicvoc/controllers/theme_change_controller.dart';
import 'package:musicvoc/core/const_colors.dart';
import 'package:musicvoc/core/other_consts.dart';
import 'package:musicvoc/presentation/settings/about.dart';
import 'package:musicvoc/presentation/settings/privacy_policy.dart';
import 'package:musicvoc/presentation/settings/terms_and_conditions.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class ScreenSettings extends StatelessWidget {
  ScreenSettings({super.key});

  final List pagesList = [
    {
      'title': 'Share App',
      'icon': Icons.share_outlined,
    },
    {
      'title': 'Privacy Policy',
      'icon': Icons.privacy_tip_outlined,
    },
    {
      'title': 'Terms & Conditions',
      'icon': Icons.my_library_books_outlined,
    },
    {
      'title': 'About',
      'icon': Icons.info_outline,
    },
    {
      'title': 'Contact',
      'icon': Icons.mail_outline,
    }
  ];

  final themeChangeController = Get.put(ThemeChangeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kHeight10,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: const Text('CUSTOMIZE'),
              ),
              SizedBox(height: 5.h),
              Container(
                height: 50.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.w),
                  color: Theme.of(context).colorScheme.background,
                ),
                child: Center(
                  child: ListTile(
                    leading: const Icon(Icons.color_lens_outlined),
                    title: Text(
                      'Theme',
                      style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).textTheme.bodyLarge!.color,
                      ),
                    ),
                    trailing: Obx(
                      () => Switch(
                          activeTrackColor: kMainBlueColor,
                          value: themeChangeController.isDarkTheme.value,
                          onChanged: (value) {
                            themeChangeController.changeTheme();
                          }),
                    ),
                  ),
                ),
              ),
              kHeight20,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: const Text('GENERAL'),
              ),
              SizedBox(height: 5.h),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.w),
                  color: Theme.of(context).colorScheme.background,
                ),
                child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: 53.h,
                      child: Center(
                        child: ListTile(
                          leading: Icon(pagesList[index]['icon']),
                          title: Text(
                            '${pagesList[index]['title']}',
                            style: TextStyle(
                              fontSize: 16,
                              color:
                                  Theme.of(context).textTheme.bodyLarge!.color,
                            ),
                          ),
                          onTap: () {
                            if (pagesList[index]['title'] == 'Privacy Policy') {
                              Get.to(
                                () => const ScreenPrivacyPolicy(),
                                transition: kTransitionRightToLeft,
                                duration: const Duration(),
                              );
                            } else if (pagesList[index]['title'] ==
                                'Terms & Conditions') {
                              Get.to(
                                () => const ScreenTermsAndConditions(),
                                transition: kTransitionRightToLeft,
                                duration: const Duration(),
                              );
                            } else if (pagesList[index]['title'] == 'About') {
                              Get.to(
                                () => const ScreenAbout(),
                                transition: kTransitionRightToLeft,
                                duration: const Duration(),
                              );
                            } else if (pagesList[index]['title'] ==
                                'Share App') {
                              Share.share(
                                  'https://github.com/unaismnr/musicvoc');
                            } else if (pagesList[index]['title'] == 'Contact') {
                              emailContact();
                            }
                          },
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => Divider(
                    height: 0.h,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  itemCount: pagesList.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> emailContact() async {
    if (!await launchUrl(
      Uri.parse('mailto:contact@netecart.com'),
    )) {
      throw Exception('Could not launch email');
    }
  }
}

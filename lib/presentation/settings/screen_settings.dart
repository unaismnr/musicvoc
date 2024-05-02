import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musicvoc/core/other_consts.dart';
import 'package:musicvoc/presentation/settings/about.dart';
import 'package:musicvoc/presentation/settings/privacy_policy.dart';
import 'package:musicvoc/presentation/settings/terms_and_conditions.dart';

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
      'icon': Icons.mail,
    }
  ];

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
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 30.w,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(10.w),
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 20.w),
                      const Icon(Icons.color_lens_outlined),
                      SizedBox(width: 15.w),
                      Text(
                        'Theme',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Theme.of(context).textTheme.bodyLarge!.color,
                        ),
                      ),
                    ],
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
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 30.w,
                      offset: const Offset(0, 10),
                    ),
                  ],
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
                              fontSize: 16.sp,
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
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenPrivacyPolicy extends StatelessWidget {
  const ScreenPrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    SizedBox sizedBoxHeight = SizedBox(height: 16.0.h);
    final TextStyle boldTextStyle = TextStyle(
      fontSize: 16.0.sp,
      fontWeight: FontWeight.bold,
      color: Theme.of(context).textTheme.bodyLarge!.color,
    );
    final TextStyle regularTextStyle = TextStyle(
      fontSize: 15.0.sp,
      color: Theme.of(context).textTheme.bodyLarge!.color,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Policy'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sizedBoxHeight,
              Text(
                '1. Data Collection:',
                style: boldTextStyle,
              ),
              Text(
                'We do not collect any personal information from users. The only data accessed and stored by the app are music files stored locally on the user\'s device. No other data, such as user identifiers or device information, is collected.',
                style: regularTextStyle,
              ),
              sizedBoxHeight,
              Text(
                '2. Data Access:',
                style: boldTextStyle,
              ),
              Text(
                'In order to access music files stored on the user\'s device, the app requests permission from the user to access device storage. This permission is requested through a pop-up dialogue as well as a notification, ensuring user awareness and consent.',
                style: regularTextStyle,
              ),
              sizedBoxHeight,
              Text(
                '3. Purpose of Data Collection:',
                style: boldTextStyle,
              ),
              Text(
                'The sole purpose of accessing music files is to enable users to play and enjoy their own music library using our app. No data is collected or used for any other purpose.',
                style: regularTextStyle,
              ),
              sizedBoxHeight,
              Text(
                '4. Data Sharing:',
                style: boldTextStyle,
              ),
              Text(
                'We do not share any user data, including music files or any other information, with third parties. The app operates entirely offline, and all data remains stored locally on the user\'s device.',
                style: regularTextStyle,
              ),
              sizedBoxHeight,
              Text(
                '5. Security Measures:',
                style: boldTextStyle,
              ),
              Text(
                'While the app does not actively collect user data, we take user privacy and data security seriously. We recommend users maintain general device security practices, such as keeping their device software up to date and utilizing device security features.',
                style: regularTextStyle,
              ),
              sizedBoxHeight,
              Text(
                '6. Policy Changes:',
                style: boldTextStyle,
              ),
              Text(
                'This privacy policy may be updated from time to time without prior notice. Any changes to the policy will be reflected in the updated version, and users are encouraged to review the policy periodically.',
                style: regularTextStyle,
              ),
              SizedBox(height: 50.0.h),
            ],
          ),
        ),
      ),
    );
  }
}

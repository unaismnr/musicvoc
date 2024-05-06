import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenTermsAndConditions extends StatelessWidget {
  const ScreenTermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    SizedBox sizedBoxHeight = SizedBox(height: 16.h);
    final TextStyle boldTextStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Theme.of(context).textTheme.bodyLarge!.color,
    );
    final TextStyle regularTextStyle = TextStyle(
      fontSize: 15,
      color: Theme.of(context).textTheme.bodyLarge!.color,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Terms & Conditions'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              sizedBoxHeight,
              Text(
                '1. Acceptance of Terms:',
                style: boldTextStyle,
              ),
              Text(
                'By using this app, you agree to abide by these terms and conditions. If you do not agree with any part of these terms, you may not use the app.',
                style: regularTextStyle,
              ),
              sizedBoxHeight,
              Text(
                '2. User Conduct:',
                style: boldTextStyle,
              ),
              Text(
                'You agree not to engage in any prohibited activities while using the app, including but not limited to illegal activities, harassment, or unauthorized use of the app.',
                style: regularTextStyle,
              ),
              sizedBoxHeight,
              Text(
                '3. Liability:',
                style: boldTextStyle,
              ),
              Text(
                'The app developer shall not be liable for any damages incurred by users while using the app, including but not limited to loss of data, loss of revenue, or any direct, indirect, or consequential damages.',
                style: regularTextStyle,
              ),
              sizedBoxHeight,
              Text(
                '4. Termination:',
                style: boldTextStyle,
              ),
              Text(
                'The app developer reserves the right to terminate or suspend user access to the app at any time, with or without cause, and without prior notice.',
                style: regularTextStyle,
              ),
              sizedBoxHeight,
              Text(
                '5. Governing Law:',
                style: boldTextStyle,
              ),
              Text(
                'These terms and conditions shall be governed by and construed in accordance with the laws of Your Country.',
                style: regularTextStyle,
              ),
              sizedBoxHeight,
              Text(
                '6. Changes to Terms:',
                style: boldTextStyle,
              ),
              Text(
                'The app developer reserves the right to update or modify these terms and conditions at any time without prior notice. Users are encouraged to review the terms periodically for any changes.',
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

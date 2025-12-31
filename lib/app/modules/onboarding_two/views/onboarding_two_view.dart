import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:yummy/app/data/app_color.dart';
import 'package:yummy/app/data/app_text_style.dart';
import 'package:yummy/app/data/image_path.dart';
import 'package:yummy/app/routes/app_pages.dart';

import '../controllers/onboarding_two_controller.dart';


class OnboardingTwoView extends GetView<OnboardingTwoController> {
  const OnboardingTwoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(ImagePath.onboardingTwo),
            SizedBox(height: 10.h),
            Text(
              "Fast food \ndelivery",
              style: AppTextStyles.bold32,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 16.h),
            Text(
              "We are always ready to deliver your items quickly and professionally ",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.medium16.copyWith(
                color: AppColors.greyColor,
              ),
            ),
            SizedBox(height: 80.h),
            Align( alignment: Alignment.bottomRight,
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.SIGN_IN);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.orangeColor,
                  shape: CircleBorder(),
                ),
                child: Icon(Icons.arrow_forward_ios ,size: 25,),
              ),
            ),

          ],
        ),
      ),

    );
  }
}

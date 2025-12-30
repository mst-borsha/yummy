import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:yummy/app/data/app_color.dart';
import 'package:yummy/app/data/app_text_style.dart';
import 'package:yummy/app/data/image_path.dart';

import '../controllers/onboarding_one_controller.dart';

class OnboardingOneView extends GetView<OnboardingOneController> {
  const OnboardingOneView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(ImagePath.onboardingOne),
            SizedBox(height: 50.h),
            Text(
              "Delivery \nEverywhere",
              style: AppTextStyles.bold32,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 16.h),
            Text(
              "We are always ready to deliver your items quickly and professionally ",
              style: AppTextStyles.medium16.copyWith(
                color: AppColors.greyColor,
              ),
            ),
            SizedBox(height: 35.h,),
            /*ElevatedButton(onPressed: () {

            }, child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: AppColors.orangeColor,
                shape: BoxShape.circle,
              ),
            ))*/


          ],
        ),
      ),
    );
  }
}

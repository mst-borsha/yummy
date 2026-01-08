import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:yummy/app/data/app_color.dart';
import 'package:yummy/app/data/app_text_style.dart';
import 'package:yummy/app/data/image_path.dart';

import '../controllers/information_controller.dart';

class InformationView extends GetView<InformationController> {
  const InformationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new, size: 20),
        title: Center(child: Text('Information', style: AppTextStyles.bold20)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            children: [
              Image.asset(ImagePath.informationPic),
              Row(
                children: [
                  Icon(Icons.location_on_outlined, color: AppColors.blueColor),
                  SizedBox(width: 12),
                  Text('997 Dai La, Dong Da, Ha Noi'),
                ],
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                child: Divider(color: AppColors.greyColor),
              ),

              Row(
                children: [
                  Icon(Icons.restaurant, color: AppColors.blueColor),
                  SizedBox(width: 12),
                  Text('Category: Noodle'),
                ],
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Divider(color: AppColors.greyColor),
              ),

              Row(
                children: [
                  Icon(Icons.timer_outlined, color: AppColors.blueColor),
                  SizedBox(width:10),
                  Text(
                    'Open hour',
                    style: AppTextStyles.medium16.copyWith(
                      color: AppColors.blackColor,
                    ),
                  ),
                ],
              ),
              buildRowList(text: "Monday", time: "07:30 - 21:45"),
              SizedBox(height: 10),
              buildRowList(text: "Tuesday", time: "07:30 - 21:45"),
              SizedBox(height: 10),
              buildRowList(text: "Wednesday", time: "07:30 - 21:45"),
              SizedBox(height: 10),
              buildRowList(text: "Thursday", time: "07:30 - 21:45"),
              SizedBox(height: 10),
              buildRowList(text: "Friday", time: "07:30 - 21:45"),
              SizedBox(height: 10),
              buildRowList(text: "Saturday", time: "07:30 - 21:45"),
              SizedBox(height: 10),
              buildRowList(text: "Sunday ", time: "07:30 - 21:45"),
            ],
          ),
        ),
      ),
    );
  }

  Row buildRowList({required String text, required String time}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          text,
          style: AppTextStyles.medium14.copyWith(color: AppColors.greyColor),
        ),
        Text(
          time,
          style: AppTextStyles.medium14.copyWith(color: AppColors.greyColor),
        ),
      ],
    );
  }
}

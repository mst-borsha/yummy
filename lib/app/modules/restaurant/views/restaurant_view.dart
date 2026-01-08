import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:yummy/app/data/app_color.dart';
import 'package:yummy/app/data/image_path.dart';

import '../controllers/restaurant_controller.dart';

class RestaurantView extends GetView<RestaurantController> {
  const RestaurantView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(ImagePath.homepage,fit: BoxFit.cover,),

            SizedBox(
              height: 200,
              width: 200,

              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 160.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.orangeColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(children: [
                      Text('Super delicious heirloom mixed noodles')
                    ],)
                  ),
                  Positioned(
                    top: 4,
                    left: -4,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: AppColors.blueColor,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        'PROMO',
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        
          ],
        ),
      ),
    );
  }
}

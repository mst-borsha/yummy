import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:yummy/app/data/app_color.dart';
import 'package:yummy/app/data/app_text_style.dart';
import 'package:yummy/app/data/image_path.dart';

import '../controllers/favorite_restaurant_controller.dart';

class FavoriteRestaurantView extends GetView<FavoriteRestaurantController> {
  const FavoriteRestaurantView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new, size: 20),
        title: Center(child: Text("Favorite", style: AppTextStyles.bold20)),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 60.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Center(child: Image.asset(ImagePath.favoritePic, height: 300)),
                SizedBox(height: 30),
                Text("No Favorite", style: AppTextStyles.bold20),
                Text(
                  "You don't have any favorites yet?",
                  style: AppTextStyles.medium12.copyWith(
                    color: AppColors.greyColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {}, child: Text("Add now")),
            ),
          ],
        ),
      ),
    );
  }
}

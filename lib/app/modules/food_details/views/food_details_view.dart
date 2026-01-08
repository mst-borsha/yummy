import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:yummy/app/data/app_color.dart';
import 'package:yummy/app/data/app_text_style.dart';
import 'package:yummy/app/data/image_path.dart';

import '../controllers/food_details_controller.dart';

class FoodDetailsView extends GetView<FoodDetailsController> {
  const FoodDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 230,
              width: double.infinity,
              decoration: BoxDecoration(color: AppColors.orangeColor),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: 50,
                    right: 50,
                    left: 50,
                    child: Image.asset(ImagePath.homePic3),
                  ),
                ],
              ),
            ),
            SizedBox(height: 100.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Combination fried rice",
                    style: AppTextStyles.bold20.copyWith(
                      color: AppColors.blackColor,
                    ),
                  ),
                  Text(
                    'Lam, Phomai, Yaogurt',
                    style: AppTextStyles.medium16.copyWith(
                      color: AppColors.greyColor,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "\$230",
                            style: AppTextStyles.bold20.copyWith(
                              color: AppColors.blackColor,
                            ),
                          ),
                          SizedBox(width: 6),
                          Text(
                            "\$230",
                            style: AppTextStyles.medium12.copyWith(
                              color: AppColors.greyColor,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 2,
                            width: 9,
                            color: AppColors.greyColor,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              "1",
                              style: AppTextStyles.medium20.copyWith(
                                color: AppColors.blackColor,
                              ),
                            ),
                          ),
                          Container(
                            height: 26,
                            width: 26,
                            decoration: BoxDecoration(
                              color: AppColors.blackColor,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Center(
                              child: Text(
                                "+",
                                style: AppTextStyles.medium14.copyWith(
                                  color: AppColors.whiteColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 27),
                    child: Divider(color: AppColors.greyColor.withAlpha(60)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Detail", style: AppTextStyles.medium16),
                      Icon(Icons.keyboard_arrow_down_sharp),
                    ],
                  ),
                  Text(
                    "A hamburger (or burger for short) is a food, typically considered a sandwich, consisting of one or more cooked patties - usually ground meat, typically beef placed inside a sliced bread roll or bun. ",
                    style: AppTextStyles.regular14.copyWith(
                      color: AppColors.greyColor,
                    ),
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Message for the store",
                    style: AppTextStyles.medium16.copyWith(
                      color: AppColors.blackColor,
                    ),
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    maxLines: 5,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      hintText: "Enter your text",
                      hintStyle: TextStyle(color: AppColors.greyColor),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.greyColor.withAlpha(50),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.greyColor.withAlpha(50),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.shopping_bag_outlined, size: 35),
                      SizedBox(width: 7),
                      Expanded(
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Text("Order"), Text("  . 230\$")],
                            ),
                          ),
                        ),
                      ),
                    ],
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

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:yummy/app/routes/app_pages.dart';

import '../../../data/app_color.dart';
import '../../../data/app_text_style.dart';
import '../../../data/image_path.dart';
import '../controllers/homepage_filter_controller.dart';

class HomepageFilterView extends GetView<HomepageFilterController> {
  const HomepageFilterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.location_on_outlined,
          color: AppColors.orangeColor,
          size: 40,
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Delivery to',
              style: AppTextStyles.bold13.copyWith(color: AppColors.greyColor),
            ),
            Row(
              children: [
                Text(
                  '92 Hang Trong',
                  style: AppTextStyles.bold13.copyWith(
                    color: AppColors.blackColor,
                  ),
                ),
                DropdownButton(items: List.empty(), onChanged: (value) {}),
              ],
            ),
          ],
        ),
        actions: [
          Icon(Icons.shopping_bag_outlined, size: 40),
          Icon(Icons.read_more_outlined, size: 40),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(
          children: [
            InkWell(
              onTap: (){
                Get.toNamed(Routes.ADDRESS);
              },
              child: TextFormField(
                autofocus: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search_sharp),
                  filled: true,
                  fillColor: AppColors.greyColor.withAlpha(40),
                  hintText: "Search food, restaurant,...",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(70),
                  ),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            SizedBox(
              height: 50,
              child: ListView(
                shrinkWrap: true,
                primary: false,
                scrollDirection: Axis.horizontal,
                children: [
                  buildCatList(childText: "Near you", onPressed: () {}),
                  buildCatList(childText: "Hot Food", onPressed: () {}),
                  buildCatList(childText: "Promotion", onPressed: () {}),
                  buildCatList(childText: "Near you", onPressed: () {}),
                  buildCatList(childText: "Hot Food", onPressed: () {}),
                  buildCatList(childText: "Promotion", onPressed: () {}),

                  SizedBox(width: 10),
                ],
              ),
            ),
            SizedBox(height: 30),

            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                primary: false,
                scrollDirection: Axis.vertical,
                itemCount: 20,
                itemBuilder: (context, index) {
                  return buildCardRowListView(
                    title: "Wonton egg noodle soup",
                    subtitle: "Shrimp, ham, pork, chicken ",
                    rating: "4.3",
                    distance: "500m",
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }


  Padding buildCatList({
    required String childText,
    required void Function()? onPressed,
  }) {
    return Padding(
      padding: EdgeInsets.only(right: 16.w),
      child: SizedBox(
        height: 36,
        width: 85,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(0),
            foregroundColor: AppColors.greyColor,
            backgroundColor: AppColors.whiteColor,
            elevation: 0,
          ),
          child: Text(childText),
        ),
      ),
    );
  }

  Padding buildCardRowListView({
    required String title,
    required String subtitle,
    required String rating,
    required String distance,
  }) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 80,
            width: 104,
            decoration: BoxDecoration(
              color: AppColors.skyColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(child: Image.asset(ImagePath.homePic3, height: 120)),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyles.medium14,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                Text(
                  subtitle,
                  style: AppTextStyles.medium12,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Image.asset(ImagePath.homeStar, height: 25),
                    SizedBox(width: 5),
                    Text(rating, style: AppTextStyles.medium12),
                    SizedBox(width: 5),
                    Text(
                      "|",
                      style: AppTextStyles.medium12.copyWith(
                        color: AppColors.greyColor,
                      ),
                    ),
                    SizedBox(width: 5),
                    Icon(Icons.location_on_outlined, size: 20),
                    Text(
                      distance,
                      style: AppTextStyles.medium12.copyWith(
                        color: AppColors.blackColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//Container(
//       margin: EdgeInsets.only(right: 10.h),
//       height: 36.h,
//       width: 85.w,
//       decoration: BoxDecoration(
//         color: AppColors.violetColor,
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: Center(
//         child: Text(
//           text,
//           style: AppTextStyles.medium12.copyWith(color: AppColors.blueColor),
//         ),
//       ),
//     );

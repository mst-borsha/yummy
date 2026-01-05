import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:yummy/app/data/app_color.dart';
import 'package:yummy/app/data/app_text_style.dart';
import 'package:yummy/app/data/image_path.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

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
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 20.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search_sharp),
                  filled: true,
                  fillColor: AppColors.greyColor.withAlpha(40),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(70),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Image.asset(ImagePath.homepage),
              // categories List View
              buildCateListView(),

              SizedBox(height: 20),
              Card(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 10.w,
                  ),
                  height: 450,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Top discounts",
                                style: AppTextStyles.bold20,
                              ),
                              SizedBox(width: 10),
                              // Timer
                              buildDiscountTimer(time: "01"),
                              buildDiscountTimer(time: "10"),
                              buildDiscountTimer(time: "25", isClone: false),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color: AppColors.greyColor,
                          ),
                        ],
                      ),
                      Text(
                        '\$10 off orders from \$50',
                        style: AppTextStyles.medium16.copyWith(
                          color: AppColors.greyColor,
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 300,
                        width: double.infinity,
                        child: ListView.builder(
                          itemCount: 60,
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return buildListViewContainer();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                height: 500,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.greyColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Top voucher', style: AppTextStyles.bold24),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.whiteColor,
                        ),
                      ],
                    ),
                    Text(
                      'We have 50 discount codes',
                      style: AppTextStyles.medium16.copyWith(
                        color: AppColors.whiteColor,
                      ),
                    ),
                    SizedBox(height: 10),

                    // GridView.builder(
                    //   //scrollDirection: Axis.vertical,
                    //     shrinkWrap: true,
                    //     itemCount: 100,
                    //     primary: false,
                    //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    //       childAspectRatio: 1,
                    //         crossAxisSpacing: 10,
                    //         mainAxisSpacing: 10,
                    //         crossAxisCount: 2), itemBuilder: (context, index) {
                    //           return  ClipRRect(
                    //             borderRadius: BorderRadius.circular(12),
                    //             child: Image.asset(
                    //               ImagePath.gridViewVoucher,
                    //               fit: BoxFit.cover,
                    //             ),
                    //           );
                    //         },)



                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildListViewContainer() {
    return Container(
      margin: EdgeInsets.only(right: 16),
      height: 300,
      width: 200,
      color: AppColors.whiteColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          SizedBox(
            height: 200,
            width: 200,

            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  height: 180,
                  width: 180,
                  decoration: BoxDecoration(
                    color: AppColors.orangeColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Image.asset(ImagePath.homepage2, height: 140),
                  ),
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
          Text("Super hot", style: AppTextStyles.bold20),
          Text(
            'Meat - with sauce',
            style: AppTextStyles.medium14.copyWith(color: AppColors.greyColor),
          ),
          Row(
            children: [
              Image.asset(ImagePath.homeStar, height: 25),
              SizedBox(width: 5),
              Text('4.5', style: AppTextStyles.medium12),
              SizedBox(width: 5),
              Text(
                '(100+)',
                style: AppTextStyles.medium12.copyWith(
                  color: AppColors.greyColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  SizedBox buildCateListView() {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: ListView.builder(
        itemCount: 50,
        shrinkWrap: true,
        primary: false,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              children: [
                Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    shape: BoxShape.circle,
                  ),
                  child: ClipRRect(
                    child: Image.asset(ImagePath.homepage1, fit: BoxFit.cover),
                  ),
                ),
                Text("Voucher"),
              ],
            ),
          );
        },
      ),
    );
  }

  Row buildDiscountTimer({required String time, bool isClone = true}) {
    return Row(
      children: [
        Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            color: AppColors.blackColor,
            borderRadius: BorderRadius.circular(2),
          ),
          child: Center(
            child: Text(
              time,
              style: AppTextStyles.bold8.copyWith(color: AppColors.whiteColor),
            ),
          ),
        ),
        if (isClone)
          const Text(
            ' : ',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:yummy/app/data/app_color.dart';
import 'package:yummy/app/data/app_text_style.dart';
import 'package:yummy/app/data/image_path.dart';

import '../controllers/check_order_confirm_controller.dart';

class CheckOrderConfirmView extends GetView<CheckOrderConfirmController> {
  const CheckOrderConfirmView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Center(
          child: Text("Order confirmation", style: AppTextStyles.bold20),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: AppColors.orangeColor,
                      size: 40,
                    ),
                    SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Delivery to ",
                          style: AppTextStyles.medium16.copyWith(
                            color: AppColors.greyColor,
                          ),
                        ),
                        Text(
                          "92 Hang Trong, Hoan Kiem",
                          style: AppTextStyles.bold16,
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(Icons.arrow_forward_ios_outlined),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: Divider(color: AppColors.greyColor.withAlpha(50)),
            ),
            Text(
              "Your order",
              style: AppTextStyles.bold17.copyWith(color: AppColors.greyColor),
            ),
            buildRow(
              title: 'Steak Beef',
              subtitle: '2 pieces - with sauce',
              dollar: "\$230",
            ),
            buildRow(
              title: 'Hambuger hot',
              subtitle: 'Meat - with sauce',
              dollar: "\$120",
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Divider(color: AppColors.greyColor.withAlpha(60)),
            ),
            buildRowList(text: 'Subtotal (2 item)', dollar: "\$120"),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: buildRowList(text: 'Delivery charges', dollar: "\$2"),
            ),
            buildRowList(text: 'Total', dollar: "\$332"),
            SizedBox(height: 10.h,),

            SizedBox(
              height: 80,
              child: ListView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 16),
                    child: Image.asset(
                      ImagePath.gridViewVoucher,
                      fit: BoxFit.cover,
                    ),
                  );
                  ;
                },
              ),
            ),
            SizedBox(height: 40,),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: AppColors.skyColor),
                        onPressed: (){}, child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.cabin),
                        Text("Cash"),
                      ],
                    )),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(backgroundColor: AppColors.skyColor),
                            onPressed: (){}, child: Text("THANTHAN"))),
                ),

              ],
            ),
            SizedBox(height: 40,),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){}, child: Text("Order")))
          ],
        ),
      ),
    );
  }
  
  

  Row buildRowList({required String text, required String dollar}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: TextStyle(color: AppColors.greyColor)),
        Text(dollar, style: TextStyle(color: AppColors.greyColor)),
      ],
    );
  }

  Row buildRow({
    required String title,
    required String subtitle,
    required String dollar,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.violetColor,
                ),
                child: Center(
                  child: Image.asset(ImagePath.homePic3, height: 40),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text('1x'),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyles.bold15.copyWith(
                    color: AppColors.blackColor,
                  ),
                ),
                Text(
                  subtitle,
                  style: AppTextStyles.medium12.copyWith(
                    color: AppColors.greyColor,
                  ),
                ),
              ],
            ),
          ],
        ),
        Column(
          children: [
            Text(dollar, style: AppTextStyles.medium16),
            Text(
              "\$250",
              style: TextStyle(
                decoration: TextDecoration.lineThrough,
                color: AppColors.greyColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

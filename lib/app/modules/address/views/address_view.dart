import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:yummy/app/data/app_text_style.dart';
import 'package:yummy/app/routes/app_pages.dart';

import '../../../data/app_color.dart';
import '../controllers/address_controller.dart';

class AddressView extends GetView<AddressController> {
  const AddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_forward_ios_outlined),
        title: Center(child: Text("Address")),
        actions: [
          Padding(padding: EdgeInsets.only(right: 15), child: Icon(Icons.map)),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              autofocus: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search_sharp),
                filled: true,
                fillColor: AppColors.greyColor.withAlpha(40),
                hintText: "Enter address",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(70),
                ),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
              ),
            ),

            SizedBox(height: 20),
            buildListViewListTile(
              title: '92 Hang Trong',
              subTitle: '92 Hang Trong, Hoan Kiem, Ha Noi',
              leading: Icon(
                Icons.location_on_outlined,
                color: AppColors.orangeColor,
                size: 30,
              ),
            ),
            Divider(color: AppColors.greyColor.withAlpha(55)),

            Text(
              "Home",
              style: AppTextStyles.medium14.copyWith(
                color: AppColors.greyColor,
              ),
            ),

            buildListViewListTile(
              title: 'Floral JSC',
              subTitle: '33B, Pham Ngu Lao, Phan Chu Trinh, Viet Nam',
              leading: Icon(
                Icons.home_outlined,
                color: AppColors.blackColor,
                size: 30,
              ),
            ),
            Divider(color: AppColors.greyColor.withAlpha(55)),

            Text(
              "Company",
              style: AppTextStyles.medium14.copyWith(
                color: AppColors.greyColor,
              ),
            ),

            buildListViewListTile(
              title: 'Company CDC VietNam',
              subTitle: '6 Pham Ngu Lao, Phan Chu Trinh, Viet Nam',
              leading: Icon(
                Icons.shopping_bag_outlined,
                color: AppColors.blackColor,
                size: 30,
              ),
            ),
            Divider(color: AppColors.greyColor.withAlpha(55)),
            Text(
              "Recent",
              style: AppTextStyles.medium14.copyWith(
                color: AppColors.greyColor,
              ),
            ),
            buildListViewListTile(
              title: '923 Hang Bai',
              subTitle: '923 Hang Bai, Hoan Kiem, Ha Noi',
              leading: Icon(
                Icons.refresh,
                color: AppColors.blackColor,
                size: 30,
              ),
            ),
            Divider(color: AppColors.greyColor.withAlpha(55)),
            buildListViewListTile(
              title: '989 P.Bui Thi Xuan',
              subTitle: '165 P.Bui Thi Xuan, Hai Ba Trung, Ha Noi',
              leading: Icon(
                Icons.refresh,
                color: AppColors.blackColor,
                size: 30,
              ),
            ),
            SizedBox(height: 50),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.NEW_ADDRESS_LOCATION);
                },
                child: Text("New address"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ListView buildListViewListTile({
    required String title,
    required String subTitle,
    required Widget? leading,
  }) {
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      primary: false,
      padding: EdgeInsets.all(0),
      children: [
        ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 0),
          leading: leading,
          title: Text(title),
          trailing: Icon(
            Icons.arrow_forward_ios_outlined,
            color: AppColors.greyColor,
            size: 20,
          ),
          subtitle: Text(
            subTitle,
            style: AppTextStyles.medium12.copyWith(color: AppColors.greyColor),
          ),
        ),
      ],
    );
  }
}

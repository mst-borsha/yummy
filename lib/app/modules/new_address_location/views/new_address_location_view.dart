import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:yummy/app/data/app_color.dart';
import 'package:yummy/app/data/app_text_style.dart';
import 'package:yummy/app/data/image_path.dart';

import '../controllers/new_address_location_controller.dart';

class NewAddressLocationView extends GetView<NewAddressLocationController> {
  const NewAddressLocationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Icon(Icons.arrow_forward_ios_outlined),
              title: Center(
                child: Text('Select location', style: AppTextStyles.bold20),
              ),
            ),
            ClipRRect(child: Image.asset(ImagePath.locationMap)),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 16.h,vertical: 10.w),
              child: Text("Suggest",style: AppTextStyles.medium20.copyWith(color: AppColors.greyColor),),
            ),
            ListTile(
              leading: Icon(Icons.location_on_outlined),
              title: Text("Company CDC VietNam"),
              subtitle: Text('92 Hang Trong, Hoan Kiem, Ha Noi'),
            ),
            ListTile(
              leading: Icon(Icons.location_on_outlined),
              title: Text("Floral JSC"),
              subtitle: Text('33B, Pham Ngu Lao, Phan Chu Trinh, Viet Nam'),
            ),
            ListTile(
              leading: Icon(Icons.location_on_outlined),
              title: Text("Company Vinachem"),
              subtitle: Text('6 Pham Ngu Lao, Phan Chu Trinh, Viet Nam'),
            ),
        
          ],
        ),
      ),
    );
  }
}

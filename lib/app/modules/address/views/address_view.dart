import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../data/app_color.dart';
import '../controllers/address_controller.dart';

class AddressView extends GetView<AddressController> {
  const AddressView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:Icon(Icons.arrow_forward_ios_outlined) ,
        title: Center(child: Text("Address")),
        actions: [Padding(
          padding:  EdgeInsets.only(right: 15),
          child: Icon(Icons.map),
        )],
      ),
      body:   Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16.h,vertical: 20.w),
        child: Column(
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
          ],
        ),
      ),
    );
  }
}

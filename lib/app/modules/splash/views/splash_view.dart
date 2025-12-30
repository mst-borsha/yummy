import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:yummy/app/data/app_text_style.dart';
import 'package:yummy/app/data/image_path.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SplashController());
    return Scaffold(
     body:  Padding(
       padding:  EdgeInsets.symmetric(horizontal: 16.w,),
       child: Column(

         children: [
           Image.asset(ImagePath.splash,),
           Text("Yummy",style: AppTextStyles.bold32,)
         ],
       ),
     ),
      
    );
  }
}

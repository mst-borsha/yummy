import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:yummy/app/data/image_path.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SplashController());
    return Scaffold(
     body:  Center(child: Image.asset(ImagePath.splash,height: 130.h,)),
    );
  }
}

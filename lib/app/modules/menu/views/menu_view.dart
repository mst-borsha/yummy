import 'package:flutter/material.dart' hide MenuController;
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:yummy/app/data/app_color.dart';

import '../controllers/menu_controller.dart';

class MenuView extends GetView<MenuController> {
  const MenuView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 242.h,
            width: double.infinity,
            color: AppColors.peachPuff,
            child: Row(children: [
              Icon(Icons.arrow_back_ios),
              Text("Menu"),
              Icon(Icons.more_horiz),
            ],),
          ),

        ],
      ),
    );
  }
}

import 'package:flutter/material.dart' hide MenuController;

import 'package:get/get.dart';

import '../controllers/menu_controller.dart';

class MenuView extends GetView<MenuController> {
  const MenuView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [

            ],
          )
        ],
      ),
    );
  }
}

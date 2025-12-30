import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class PageIndicatorController extends GetxController {
  final PageController pageController = PageController();
  final RxInt currentIndex = 0.obs;

  void onPageChanged(int index) {
    currentIndex.value = index;
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}


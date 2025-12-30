import 'package:get/get.dart';

import '../controllers/page_indicator_controller.dart';

class PageIndicatorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PageIndicatorController>(
      () => PageIndicatorController(),
    );
  }
}

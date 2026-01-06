import 'package:get/get.dart';

import '../controllers/homepage_filter_controller.dart';

class HomepageFilterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomepageFilterController>(
      () => HomepageFilterController(),
    );
  }
}

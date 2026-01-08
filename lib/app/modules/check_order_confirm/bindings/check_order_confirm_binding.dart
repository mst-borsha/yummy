import 'package:get/get.dart';

import '../controllers/check_order_confirm_controller.dart';

class CheckOrderConfirmBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CheckOrderConfirmController>(
      () => CheckOrderConfirmController(),
    );
  }
}

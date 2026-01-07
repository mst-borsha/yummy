import 'package:get/get.dart';

import '../controllers/new_address_location_controller.dart';

class NewAddressLocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewAddressLocationController>(
      () => NewAddressLocationController(),
    );
  }
}

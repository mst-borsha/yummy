import 'package:get/get.dart';

import '../controllers/favorite_restaurant_controller.dart';

class FavoriteRestaurantBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FavoriteRestaurantController>(
      () => FavoriteRestaurantController(),
    );
  }
}

// import 'package:get/get.dart';
// import 'package:yummy/app/modules/onboarding_one/views/onboarding_one_view.dart';
//
// import '../controllers/page_indicator_controller.dart';
//
// class PageIndicatorBinding extends Bindings {
//   @override
//   void dependencies() {
//     Get.lazyPut<PageIndicatorController>(
//       () => PageIndicatorController(),
//
//       );
//
//   }
// }
import 'package:get/get.dart';

import '../../onboarding_one/controllers/onboarding_one_controller.dart';
import '../../onboarding_two/controllers/onboarding_two_controller.dart';
import '../controllers/page_indicator_controller.dart';

class PageIndicatorBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(PageIndicatorController());
    Get.put(OnboardingOneController());
    Get.put(OnboardingTwoController());
  }
}


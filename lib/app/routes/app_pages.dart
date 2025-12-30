import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/onboarding_one/bindings/onboarding_one_binding.dart';
import '../modules/onboarding_one/views/onboarding_one_view.dart';
import '../modules/onboarding_two/bindings/onboarding_two_binding.dart';
import '../modules/onboarding_two/views/onboarding_two_view.dart';
import '../modules/page_indicator/bindings/page_indicator_binding.dart';
import '../modules/page_indicator/views/page_indicator_view.dart';
import '../modules/sign_in/bindings/sign_in_binding.dart';
import '../modules/sign_in/views/sign_in_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING_ONE,
      page: () => const OnboardingOneView(),
      binding: OnboardingOneBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING_TWO,
      page: () => const OnboardingTwoView(),
      binding: OnboardingTwoBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => const SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.PAGE_INDICATOR,
      page: () =>  PageIndicatorView(),
      binding: PageIndicatorBinding(),
    ),
  ];
}

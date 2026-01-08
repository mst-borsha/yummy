import 'package:get/get.dart';

import '../modules/address/bindings/address_binding.dart';
import '../modules/address/views/address_view.dart';
import '../modules/check_order_confirm/bindings/check_order_confirm_binding.dart';
import '../modules/check_order_confirm/views/check_order_confirm_view.dart';
import '../modules/favorite_restaurant/bindings/favorite_restaurant_binding.dart';
import '../modules/favorite_restaurant/views/favorite_restaurant_view.dart';
import '../modules/food_details/bindings/food_details_binding.dart';
import '../modules/food_details/views/food_details_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/homepage_filter/bindings/homepage_filter_binding.dart';
import '../modules/homepage_filter/views/homepage_filter_view.dart';
import '../modules/information/bindings/information_binding.dart';
import '../modules/information/views/information_view.dart';
import '../modules/menu/bindings/menu_binding.dart';
import '../modules/menu/bindings/menu_binding.dart';
import '../modules/menu/views/menu_view.dart';
import '../modules/menu/views/menu_view.dart';
import '../modules/new_address_location/bindings/new_address_location_binding.dart';
import '../modules/new_address_location/views/new_address_location_view.dart';
import '../modules/onboarding_one/bindings/onboarding_one_binding.dart';
import '../modules/onboarding_one/views/onboarding_one_view.dart';
import '../modules/onboarding_two/bindings/onboarding_two_binding.dart';
import '../modules/onboarding_two/views/onboarding_two_view.dart';
import '../modules/page_indicator/bindings/page_indicator_binding.dart';
import '../modules/page_indicator/views/page_indicator_view.dart';
import '../modules/restaurant/bindings/restaurant_binding.dart';
import '../modules/restaurant/views/restaurant_view.dart';
import '../modules/sign_in/bindings/sign_in_binding.dart';
import '../modules/sign_in/views/sign_in_view.dart';
import '../modules/sign_up/bindings/sign_up_binding.dart';
import '../modules/sign_up/views/sign_up_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.CHECK_ORDER_CONFIRM;

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
      page: () => SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.PAGE_INDICATOR,
      page: () => PageIndicatorView(),
      binding: PageIndicatorBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => const SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.HOMEPAGE_FILTER,
      page: () => const HomepageFilterView(),
      binding: HomepageFilterBinding(),
    ),
    GetPage(
      name: _Paths.ADDRESS,
      page: () => const AddressView(),
      binding: AddressBinding(),
    ),
    GetPage(
      name: _Paths.NEW_ADDRESS_LOCATION,
      page: () => const NewAddressLocationView(),
      binding: NewAddressLocationBinding(),
    ),
    GetPage(
      name: _Paths.FAVORITE_RESTAURANT,
      page: () => const FavoriteRestaurantView(),
      binding: FavoriteRestaurantBinding(),
    ),
    GetPage(
      name: _Paths.RESTAURANT,
      page: () => const RestaurantView(),
      binding: RestaurantBinding(),
    ),
    GetPage(
      name: _Paths.INFORMATION,
      page: () => const InformationView(),
      binding: InformationBinding(),
    ),
    GetPage(
      name: _Paths.FOOD_DETAILS,
      page: () => const FoodDetailsView(),
      binding: FoodDetailsBinding(),
    ),
    GetPage(
      name: _Paths.CHECK_ORDER_CONFIRM,
      page: () => const CheckOrderConfirmView(),
      binding: CheckOrderConfirmBinding(),
    ),
    GetPage(
      name: _Paths.MENU,
      page: () => const MenuView(),
      binding: MenuBinding(),
      children: [
        GetPage(
          name: _Paths.MENU,
          page: () => const MenuView(),
          binding: MenuBinding(),
        ),
      ],
    ),
  ];
}

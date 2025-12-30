import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../data/app_color.dart';
import '../../onboarding_one/views/onboarding_one_view.dart';
import '../../onboarding_two/views/onboarding_two_view.dart';
import '../controllers/page_indicator_controller.dart';

class PageIndicatorView extends GetView<PageIndicatorController> {
  PageIndicatorView({super.key});

  final List<Widget> _pages = [
    OnboardingOneView(),
    OnboardingTwoView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: controller.pageController,
            onPageChanged: controller.onPageChanged,
            itemCount: _pages.length,
            itemBuilder: (_, index) => _pages[index],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 50,
            child: Center(
              child: SmoothPageIndicator(
                controller: controller.pageController,
                onDotClicked: (index) {
                  controller.pageController.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeInOut,
                  );
                },
                count: _pages.length,
                effect: ExpandingDotsEffect(
                  activeDotColor: AppColors.orangeColor,
                  dotColor: AppColors.greyColor,
                  dotHeight: 10,
                  dotWidth: 10,
                  radius: 50,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


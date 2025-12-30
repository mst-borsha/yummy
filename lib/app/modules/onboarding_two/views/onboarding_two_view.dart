import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/onboarding_two_controller.dart';

class OnboardingTwoView extends GetView<OnboardingTwoController> {
  const OnboardingTwoView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OnboardingTwoView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'OnboardingTwoView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

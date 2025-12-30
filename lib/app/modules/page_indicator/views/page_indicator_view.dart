import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/page_indicator_controller.dart';

class PageIndicatorView extends GetView<PageIndicatorController> {
  const PageIndicatorView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageIndicatorView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PageIndicatorView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

import 'package:get/get.dart';

class SignInController extends GetxController {

  final RxBool checked = false.obs;
  final RxBool isVisible = true.obs;

  void isChecked(bool v) {
    checked.value = v;
  }

  void isVisibleOnPress() {
    isVisible.value = !isVisible.value;
  }
}

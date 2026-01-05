import 'package:get/get.dart';

class SignUpController extends GetxController {
  //TODO: Implement SignUpController

  final RxBool checked = false.obs;
  final RxBool isVisible = true.obs;

  void isChecked(bool v) {
    checked.value = v;
  }

  void isVisibleOnPress() {
    isVisible.value = !isVisible.value;
  }
}

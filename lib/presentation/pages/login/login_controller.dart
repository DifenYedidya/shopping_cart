import 'package:get/get.dart';

class LoginController extends GetxController {
  var email = ''.obs;
  var password = ''.obs;
  var togglePassword = true.obs;

  void setEmail(String value) {
    email.value = value;
    update();
  }

  void setPassword(String value) {
    password.value = value;
    update();
  }

  void setTogglePassword() {
    togglePassword.value = !togglePassword.value;
    update();
  }

  void loginHandler() async {
    final result = await login(
      email.value,
      password.value,
    );
    if (!result) {
      Get.snackbar('Login Failed', 'Email or password is wrong!');
    }
  }
}

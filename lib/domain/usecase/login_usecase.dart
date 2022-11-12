import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shopping_cart2/utils/data.dart';

Future<bool> login(String email, String password) async {
  for (var u in users) {
    if (email == u.email && password == u.password) {
      Get.find<GetStorage>().write('userID', u.id);
      return true;
    }
  }
  return false;
}

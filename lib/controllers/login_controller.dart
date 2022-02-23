import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();

  RxBool isHidden = true.obs;
  RxBool rememberMe = false.obs;

  void login() async {
    final box = GetStorage();
    if (emailC.text == "admin@gmail.com" && passC.text == "admin") {
      if (box.read("datarememberme") != null) {
        box.remove("datarememberme");
      }
      if (rememberMe.isTrue) {
        // Menyimpan Lokal Memory di hp

        box.write(
          "datarememberme",
          {
            "email": emailC.text,
            "pass": passC.text,
          },
        );
      }
      Get.offAllNamed("/menu");
    } else {
      Get.defaultDialog(
        title: "Terjadi Kesalahan",
        middleText: "Email atau Password Salah",
      );
    }
  }

  void logout() {
    Get.offAllNamed("/latihan_get_storage");
  }
}

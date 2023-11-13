import 'package:catalog_app/core/utils/my_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginCOntroller extends GetxController {
  GlobalKey<FormState> loginFormValidator = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  RxString name = ''.obs;
  RxBool changedButton = false.obs;

  void goToHomeView() async {
    if (loginFormValidator.currentState!.validate()) {
      changedButton.value = true;
      await Future.delayed(const Duration(seconds: 1));
      await Get.toNamed(MyRoutes.homeRout);
      changedButton.value = false;
    }
  }
}

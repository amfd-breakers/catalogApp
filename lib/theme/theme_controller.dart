import 'package:catalog_app/theme/dark_theme.dart';
import 'package:catalog_app/theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  ThemeMode themeMode = ThemeMode.dark;

  // get themeMode => _themeMode;
  RxBool switchOn = true.obs;

  bool changeTheme(bool theme) {
    themeMode = theme ? ThemeMode.dark : ThemeMode.light;
    update();

    return theme;
  }
  // void isToggle(bool isDark) {
  //   // ignore: unrelated_type_equality_checks
  //   if (switchOn.value == true) {
  //     _themeMode = ThemeMode.light;

  //     update();
  //   } else {
  //     _themeMode = ThemeMode.dark;
  //     update();
  //   }

  // }
}

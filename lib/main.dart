import 'package:catalog_app/core/auth/login_view.dart';
import 'package:catalog_app/core/detail/cart_view.dart';
import 'package:catalog_app/core/home/home_view.dart';
import 'package:catalog_app/theme/dark_theme.dart';
import 'package:catalog_app/theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/utils/my_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const HomeView(),
      themeMode: ThemeMode.system,
      theme: lightTheme,
      darkTheme: darkTheme,
      routes: {
        MyRoutes.loginRout: (context) => const LoginView(),
        MyRoutes.homeRout: (context) => const HomeView(),
        MyRoutes.cartRout: (context) => const CartView()
      },
    );
  }
}

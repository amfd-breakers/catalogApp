import 'package:catalog_app/core/auth/login_view.dart';
import 'package:catalog_app/core/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const HomeView(),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(brightness: Brightness.dark),
      theme: ThemeData(primaryColor: Colors.deepPurple),

      // initialRoute: "/homeView",
      routes: {
        "/login": (context) => const LoginView(),
        "/homeView": (context) => const HomeView()
      },
    );
  }
}

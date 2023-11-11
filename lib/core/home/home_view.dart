import 'package:catalog_app/core/auth/login_view.dart';
import 'package:catalog_app/theme/dark_theme.dart';
import 'package:catalog_app/theme/light_theme.dart';
import 'package:catalog_app/theme/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
        init: ThemeController(),
        builder: (controller) {
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(
                actions: [
                  IconButton(
                    onPressed: () {
                      Get.to(() => const LoginView());
                    },
                    icon: Icon(Icons.back_hand),
                  ),
                  Obx(() {
                    return Switch(
                      value: controller.switchOn.value,
                      onChanged: ((newValue) {
                        controller.switchOn.value =
                            controller.changeTheme(newValue);
                      }),
                    );
                  })
                ],
                title: const Center(
                  child: Text(
                    "Catalog App",
                  ),
                ),
              ),
              drawer: const Drawer(),
              body: const Center(
                  child: Text(
                "Welcome in 30 days of flutter",
              )),
            ),
          );
        });
  }
}

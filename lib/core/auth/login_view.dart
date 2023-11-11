import 'package:catalog_app/core/auth/login_controller.dart';
import 'package:catalog_app/core/utils/my_routes.dart';
import 'package:catalog_app/theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginCOntroller>(
        init: LoginCOntroller(),
        builder: (controller) {
          return SafeArea(
            child: Scaffold(
              backgroundColor: Colors.white,
              body: Padding(
                padding: const EdgeInsets.all(20),
                child: ListView(
                  children: [
                    Image.asset(
                      "assets/images/login.png",
                    ),
                    Obx(() {
                      return Text(
                        "Welcom ${controller.name} ",
                        style: GoogleFonts.aboreto(
                          color: Colors.black,
                          fontSize: 30,
                        ),
                        textAlign: TextAlign.center,
                      );
                    }),
                    Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: " name",
                            label: Text(
                              "Enter name",
                            ),
                          ),
                          onChanged: (value) {
                            controller.name.value = value;
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            label: Text(
                              "name",
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),

                        Obx(() {
                          return InkWell(
                            onTap: () async {
                              controller.changedButton.value = true;
                              await Future.delayed(const Duration(seconds: 1));
                              Get.toNamed(MyRoutes.homeRout);
                            },
                            child: AnimatedContainer(
                              duration: const Duration(seconds: 1),
                              height: 50,
                              width: controller.changedButton.value ? 50 : 150,
                              decoration: BoxDecoration(
                                  color: Colors.deepPurple,
                                  borderRadius: BorderRadius.circular(
                                      controller.changedButton.value ? 50 : 8)),
                              alignment: Alignment.center,
                              child: controller.changedButton.value
                                  ? const Icon(
                                      Icons.done,
                                      color: Colors.white,
                                    )
                                  : Text(
                                      "Login",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(color: backgroundColor),
                                    ),
                            ),
                          );
                        })
                        // ElevatedButton(
                        //   onPressed: () {
                        //     Get.toNamed(MyRoutes.homeRout);
                        //   },
                        //   child: const Text(
                        //     "Login",
                        //   ),
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}

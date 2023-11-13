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
                    Form(
                      key: controller.loginFormValidator,
                      child: Column(
                        children: [
                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return " name is required";
                              }
                            },
                            controller: controller.nameController,
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
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "password is required";
                              }
                              if (value.length < 6) {
                                return "Password should be atleast 6 characters";
                              }
                            },
                            decoration: const InputDecoration(
                              hintText: "Password",
                              label: Text(
                                "Enter Password",
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Obx(() {
                            return Material(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.circular(
                                  controller.changedButton.value ? 50 : 8),
                              child: InkWell(
                                onTap: controller.goToHomeView,
                                child: AnimatedContainer(
                                  duration: const Duration(seconds: 1),
                                  height: 50,
                                  width:
                                      controller.changedButton.value ? 50 : 150,
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
                                              ?.copyWith(
                                                  color: backgroundColor),
                                        ),
                                ),
                              ),
                            );
                          })
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}

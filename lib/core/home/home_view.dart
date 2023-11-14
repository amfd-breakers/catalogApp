import 'package:catalog_app/core/home/home_view_controller.dart';
import 'package:catalog_app/core/widgets/my_drawar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewController>(
        init: HomeViewController(),
        builder: (controller) {
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(
                title: Center(
                  child: Text(
                    "Catalog App",
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              drawer: const MyDrawar(),
              body: const Center(
                child: Text(
                  "Welcome in 30 days of flutter",
                ),
              ),
            ),
          );
        });
  }
}

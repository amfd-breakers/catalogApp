import 'package:catalog_app/core/home/home_view_controller.dart';
import 'package:catalog_app/core/home/header.dart';
import 'package:catalog_app/core/widgets/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewController>(
        init: HomeViewController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: Color(0xfff5f5f5),
            body: SafeArea(
              child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Column(
                    children: [
                      Header(),
                      (controller.myItemOfCatalog.isNotEmpty)
                          ? Expanded(
                              child: ListView.builder(
                                  itemCount: controller.myItemOfCatalog.length,
                                  itemBuilder: (context, index) {
                                    return CardWidget(
                                        item:
                                            controller.myItemOfCatalog[index]);
                                  }))
                          : const Center(
                              child: CircularProgressIndicator(),
                            ),
                    ],
                  )),
            ),
          );
        });
  }
}

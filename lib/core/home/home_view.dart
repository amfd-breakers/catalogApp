import 'package:catalog_app/core/detail/detail_view.dart';
import 'package:catalog_app/core/home/home_view_controller.dart';
import 'package:catalog_app/core/utils/my_routes.dart';
import 'package:catalog_app/core/widgets/header.dart';
import 'package:catalog_app/core/widgets/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewController>(
        init: HomeViewController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: const Color(0xfff5f5f5),
            body: SafeArea(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Column(
                  children: [
                    const Header(),
                    (controller.myItemOfCatalog.isNotEmpty)
                        ? Expanded(
                            child: ListView.builder(
                              itemCount: controller.myItemOfCatalog.length,
                              itemBuilder: (context, index) {
                                Item item = controller.myItemOfCatalog[index];

                                return InkWell(
                                  onTap: () {
                                    Get.to(
                                      () => DetailView(item: item),
                                    );
                                  },
                                  child: CardWidget(
                                    item: item,
                                  ),
                                );
                              },
                            ),
                          )
                        : const Center(
                            child: CircularProgressIndicator(),
                          ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}

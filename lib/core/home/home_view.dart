import 'package:catalog_app/core/detail/detail_view.dart';
import 'package:catalog_app/core/home/home_view_controller.dart';
import 'package:catalog_app/core/utils/my_routes.dart';
import 'package:catalog_app/core/utils/screen_sizes.dart';
import 'package:catalog_app/core/widgets/header.dart';
import 'package:catalog_app/core/widgets/card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/item.dart';
import '../widgets/floating_action_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewController>(
        init: HomeViewController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            body: SafeArea(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
                child: Column(
                  children: [
                    const Header(),
                    (controller.myItemOfCatalog.isNotEmpty)
                        ? Expanded(
                            child: currentScreenSize != ScreenSize.mobile
                                ? GridView.builder(
                                    shrinkWrap: true,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisSpacing: 20,
                                            crossAxisCount: currentScreenSize ==
                                                    ScreenSize.computer
                                                ? 4
                                                : 2),
                                    itemCount:
                                        controller.myItemOfCatalog.length,
                                    itemBuilder: (contex, index) {
                                      Item item =
                                          controller.myItemOfCatalog[index];

                                      return CardWidget(
                                        color: Theme.of(context).cardColor,
                                        onTap: () {
                                          Get.to(
                                            () => DetailView(item: item),
                                          );
                                        },
                                        onPressed: () {
                                          if (!controller
                                              .myItemOfCatalog[index].isAdded) {
                                            controller.add(item);
                                          }
                                        },
                                        item: item,
                                        child: item.isAdded
                                            ? const Icon(Icons.done)
                                            : const Icon(
                                                CupertinoIcons.cart_badge_plus),
                                      );
                                    })
                                : ListView.builder(
                                    itemCount:
                                        controller.myItemOfCatalog.length,
                                    itemBuilder: (context, index) {
                                      Item item =
                                          controller.myItemOfCatalog[index];

                                      return CardWidget(
                                        color: Theme.of(context).cardColor,
                                        isGrid: false,
                                        onTap: () {
                                          Get.to(
                                            () => DetailView(item: item),
                                          );
                                        },
                                        onPressed: () {
                                          if (!controller
                                              .myItemOfCatalog[index].isAdded) {
                                            controller.add(item);
                                          }
                                        },
                                        item: item,
                                        child: item.isAdded
                                            ? const Icon(Icons.done)
                                            : const Icon(
                                                CupertinoIcons.cart_badge_plus),
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
            floatingActionButton: CustomFABWithNumber(
              onPressed: () {
                Get.toNamed(MyRoutes.cartRout);
              },
              numberOfItem: controller.items.length,
            ),
          );
        });
  }
}

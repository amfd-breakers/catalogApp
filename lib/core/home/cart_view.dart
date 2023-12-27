import 'package:catalog_app/core/detail/detail_view.dart';
import 'package:catalog_app/core/home/home_view_controller.dart';
import 'package:catalog_app/core/widgets/card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/screen_sizes.dart';
import '../widgets/total_cart.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewController>(
        init: HomeViewController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: Theme.of(context).cardColor,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: Center(
                child: Text(
                  "Cart",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 40,
                  ),
                ),
              ),
            ),
            body: controller.items.isEmpty
                ? Center(
                    child: Text(
                      "Nothing to show",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                  )
                : currentScreenSize == ScreenSize.mobile
                    ? ListView.builder(
                        shrinkWrap: true,
                        itemCount: controller.items.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: CardWidget(
                                isGrid: false,
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
                                onTap: () {
                                  Get.to(() => DetailView(
                                      item: controller.items[index]));
                                },
                                onPressed: () {
                                  controller.remove(controller.items[index]);
                                },
                                item: controller.items[index],
                                child: const Icon(
                                  CupertinoIcons.delete,
                                )),
                          );
                        },
                      )
                    : GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount:
                                currentScreenSize == ScreenSize.computer
                                    ? 4
                                    : 2),
                        shrinkWrap: true,
                        itemCount: controller.items.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: CardWidget(
                                isGrid: true,
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
                                onTap: () {
                                  Get.to(() => DetailView(
                                      item: controller.items[index]));
                                },
                                onPressed: () {
                                  controller.remove(controller.items[index]);
                                },
                                item: controller.items[index],
                                child: const Icon(
                                  CupertinoIcons.delete,
                                )),
                          );
                        },
                      ),
            bottomNavigationBar: TotalCart(price: controller.totalPrice),
          );
        });
  }
}

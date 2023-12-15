import 'package:catalog_app/core/home/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/total_cart.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartController>(
        init: CartController(),
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
            body: Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Icon(Icons.done),
                      title: Text(controller.items[index].name),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.remove_circle_outline,
                        ),
                      ),
                    );
                  },
                ),
                Divider(),
                TotalCart(),
              ],
            ),
          );
        });
  }
}

import 'package:catalog_app/core/home/cart_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TotalCart extends StatelessWidget {
  const TotalCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartController>(
        init: CartController(),
        builder: (controlller) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "\$${controlller.totalPrice.toString()}",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Theme.of(context).primaryColor,
                      fontSize: 40,
                    ),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.showSnackbar(GetSnackBar(
                    duration: Duration(seconds: 2),
                    message: "can not by et",
                  ));
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(130, 30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: const Text(
                  "Buy",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          );
        });
  }
}

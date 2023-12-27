import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TotalCart extends StatelessWidget {
  const TotalCart({
    super.key,
    required this.price,
  });
  final num price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          "\$$price",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).primaryColor,
                fontSize: 40,
              ),
        ),
        ElevatedButton(
          onPressed: () {
            Get.showSnackbar(
              const GetSnackBar(
                duration: Duration(seconds: 2),
                message: "can not by yet",
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(130, 30),
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
  }
}

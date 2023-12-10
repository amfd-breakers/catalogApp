import 'package:catalog_app/core/utils/my_routes.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyRoutes.creamColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
    );
  }
}

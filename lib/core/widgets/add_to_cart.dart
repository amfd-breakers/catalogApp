import 'package:flutter/material.dart';

class AddTOCart extends StatelessWidget {
  const AddTOCart(
      {super.key, required this.isAdded, this.onPressed, required this.child});
  final bool isAdded;
  final void Function()? onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: child,
    );
  }
}

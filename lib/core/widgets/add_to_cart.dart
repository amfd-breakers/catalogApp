import 'package:flutter/material.dart';
class AddTOCart extends StatelessWidget {
  const AddTOCart({super.key, required this.isAdded, this.onPressed});
  final bool isAdded;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: isAdded ? const Icon(Icons.done) : const Text("Add to cart"),
    );
  }
}

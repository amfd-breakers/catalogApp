// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomFABWithNumber extends StatelessWidget {
  const CustomFABWithNumber(
      {Key? key, required this.numberOfItem, this.onPressed})
      : super(key: key);
  final void Function()? onPressed;
  final int numberOfItem;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FloatingActionButton(
          onPressed: onPressed,
          child: const Icon(CupertinoIcons.cart),
        ),
        Positioned(
          right: 10,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 10,
            child: Text(
              numberOfItem.toString(),
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

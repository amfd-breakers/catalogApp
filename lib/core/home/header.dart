import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Catalog App",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: const Color(0xfff493b58),
                fontSize: 40,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
          Text(
            "Trending Products",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: const Color.fromARGB(
                  255,
                  127,
                  116,
                  116,
                ),
                fontStyle: FontStyle.italic),
          ),
        ],
      ),
    );
  }
}

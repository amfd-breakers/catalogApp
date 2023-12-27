import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      width: double.infinity,
      padding: const EdgeInsets.only(top: 40, bottom: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Catalog App",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
          ),
          Text(
            "Trending Products",
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: Theme.of(context).primaryColor),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Catalog App",
        ),
      ),
      drawer: const Drawer(),
      body: const Center(
          child: Text(
        "Welcome in 30 days of flutter",
      )),
    );
  }
}

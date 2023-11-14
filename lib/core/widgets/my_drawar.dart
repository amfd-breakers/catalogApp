import 'package:flutter/material.dart';

class MyDrawar extends StatelessWidget {
  const MyDrawar({super.key});
  final String imageUrl =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuCG1eOPu3SQiBgP4-siEGZJtzwbCLdrzO8g&usqp=CAU";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.deepPurple,
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: const BoxDecoration(color: Colors.deepPurple),
                accountName: const Text(
                  "fatima",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                accountEmail: const Text(
                  "fatima@gmail.com",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                "home",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: Text(
                "profile",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email me",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

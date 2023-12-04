import 'package:catalog_app/core/utils/my_routes.dart';
import 'package:flutter/material.dart';

import '../models/item.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key, required this.item});
  final Item item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyRoutes.creamColor,
      appBar: AppBar(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10),
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\$${item.price}".toString(),
              style: const TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 29),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(100, 50),
                  shape: const StadiumBorder(),
                  backgroundColor: MyRoutes.bluishColor),
              onPressed: () {},
              child: Text(
                "Press",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Hero(
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Image.network(
                item.image,
                height: 300,
              ),
            ),
            tag: Key(
              item.id.toString(),
            ),
          ),
          Expanded(
            child: ClipPath(
              clipper: const MyClipper(clipTop: true, clipBottom: false),
              child: Container(
                height: 100,
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 60),
                  child: Column(
                    children: [
                      Text(
                        (item.name),
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: MyRoutes.bluishColor, fontSize: 30),
                      ),
                      Text(
                        item.desc,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  final bool clipTop;
  final bool clipBottom;
  const MyClipper({this.clipTop = false, this.clipBottom = true});
  @override
  getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height); // Move to the bottom-left corner

    // Define the convex shape using quadraticBezierTo
    if (clipBottom) {
      path.quadraticBezierTo(
        size.width / 2,
        size.height / 1.2,
        size.width,
        size.height,
      );
    } else {
      path.lineTo(size.width, size.height);
    }

    path.lineTo(size.width, 0); // Line to the top-right corner
    if (clipTop) {
      path.quadraticBezierTo(
        size.width / 2,
        size.height / 7.8,
        0,
        0,
      );
    } else {
      path.lineTo(0, 0);
    }
    path.close(); // Close the path to form a convex shape
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}

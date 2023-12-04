import 'package:catalog_app/core/utils/my_routes.dart';
import 'package:flutter/material.dart';

import '../models/item.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.item});
  final Item item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Container(
        padding: const EdgeInsets.all(7),
        margin: const EdgeInsets.all(5),
        height: 150,
        width: 150,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(
                5,
              ),
              decoration: BoxDecoration(
                color: MyRoutes.creamColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Hero(
                  tag: Key(item.id.toString()),
                  child: Image.network(
                    item.image,
                    width: 90,
                    height: 90,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: MyRoutes.bluishColor),
                  ),
                  Text(
                    item.desc,
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$${item.price}".toString(),
                        style: TextStyle(
                            color: MyRoutes.bluishColor,
                            fontWeight: FontWeight.bold),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: MyRoutes.bluishColor),
                        onPressed: () {},
                        child: Text(
                          "Press",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(color: Colors.white, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

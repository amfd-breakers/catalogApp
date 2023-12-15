import 'package:catalog_app/core/home/home_view_controller.dart';
import 'package:catalog_app/theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/item.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.item});
  final Item item;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewController>(
        init: HomeViewController(),
        builder: (controller) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Container(
              padding: const EdgeInsets.all(7),
              margin: const EdgeInsets.all(5),
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(
                      5,
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor,
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
                              ?.copyWith(color: Theme.of(context).primaryColor),
                        ),
                        Text(
                          item.desc,
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium
                              ?.copyWith(fontWeight: FontWeight.normal),
                        ),
                        ButtonBar(
                          alignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("\$${item.price}".toString(),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                        color: Theme.of(context).primaryColor)),
                            Obx(() {
                              return ElevatedButton(
                                onPressed: () {
                                  controller.isAdded.value = true;
                                },
                                child: controller.isAdded.value
                                    ? Icon(Icons.done)
                                    : Text(
                                        "Add to cart",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.copyWith(
                                                color: Colors.white,
                                                fontSize: 14),
                                      ),
                              );
                            }),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}

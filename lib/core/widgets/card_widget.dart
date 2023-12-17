import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/item.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.item,
    this.onPressed,
    this.onTap,
  });
  final Item item;
  final void Function()? onPressed;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(7),
          margin: const EdgeInsets.all(5),
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(20),
          ),
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
                    tag: Key(
                      item.id.toString(),
                    ),
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
                        Text(
                          "\$${item.price}".toString(),
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(color: Theme.of(context).primaryColor),
                        ),
                        ElevatedButton(
                          onPressed: onPressed,
                          child: item.isAdded
                              ? const Icon(Icons.done)
                              : const Icon(CupertinoIcons.cart_badge_plus),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

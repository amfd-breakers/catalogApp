// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:catalog_app/core/utils/screen_sizes.dart';
import 'package:flutter/material.dart';

import 'package:catalog_app/core/widgets/add_to_cart.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../models/item.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.item,
    this.onPressed,
    this.onTap,
    required this.child,
    required this.color,
    this.isGrid = true,
  }) : super(key: key);
  final Item item;
  final void Function()? onPressed;
  final void Function()? onTap;
  final Widget child;
  final Color color;
  final bool isGrid;

  @override
  Widget build(BuildContext context) {
    return isGrid
        ? Padding(
            padding: const EdgeInsets.all(20),
            child: InkWell(
              onTap: onTap,
              child: Container(
                padding: const EdgeInsets.all(7),
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
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
                            height: 230,
                            width: 290,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text(
                                item.name,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                        color: Theme.of(context).primaryColor),
                              ),
                              Text(
                                item.desc,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium
                                    ?.copyWith(fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                          ButtonBar(
                            alignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$${item.price}".toString(),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                        color: Theme.of(context).primaryColor),
                              ),

                              AddTOCart(
                                  onPressed: onPressed,
                                  isAdded: item.isAdded,
                                  child: child)
                              // ElevatedButton(
                              //   onPressed: onPressed,
                              //   child: item.isAdded
                              //       ? const Icon(Icons.done)
                              // ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: InkWell(
              onTap: onTap,
              child: Container(
                padding: const EdgeInsets.all(7),
                margin: const EdgeInsets.all(5),
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: color,
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
                                ?.copyWith(
                                    color: Theme.of(context).primaryColor),
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
                                    ?.copyWith(
                                        color: Theme.of(context).primaryColor),
                              ),

                              AddTOCart(
                                  onPressed: onPressed,
                                  isAdded: item.isAdded,
                                  child: child)
                              // ElevatedButton(
                              //   onPressed: onPressed,
                              //   child: item.isAdded
                              //       ? const Icon(Icons.done)
                              // ),
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

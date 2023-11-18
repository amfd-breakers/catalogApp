import 'package:flutter/material.dart';

import '../models/item.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.item});
  final Item item;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        title: Text(
          item.name,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        subtitle: Text(
          item.desc,
          style: Theme.of(context).textTheme.labelLarge,
        ),
        leading: Image.network(item.image),
        trailing: Text(
          "\$${item.price.toString()}",
          style: const TextStyle(color: Colors.deepPurple, fontSize: 20),
        ),
      ),
    );
  }
}

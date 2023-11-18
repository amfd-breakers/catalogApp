import 'package:catalog_app/core/models/item.dart';

class CatalogService {
  List<Item> getItems() {
    List<Item> items = [
      Item(
        id: 1,
        name: "iphone 12 Pro",
        desc: "Apple iPhone 12th generation",
        price: 999,
        color: "#33505a",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc",
      ),
    ];
    return items;
  }
}

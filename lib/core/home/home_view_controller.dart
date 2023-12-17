import 'package:catalog_app/core/services/catalog_service.dart';
import 'package:get/get.dart';

import '../models/item.dart';

class HomeViewController extends GetxController {
  final CatalogService _catalogService = CatalogService();
  List<Item> myItemOfCatalog = [];
  List<int> itemIds = [];

  @override
  void onInit() async {
    myItemOfCatalog = await _catalogService.loadData();
    update();
    super.onInit();
  }

  Item getById(int id) => myItemOfCatalog.firstWhere(
        (element) => element.id == id,
      );
  Item getByPosition(int pos) {
    return myItemOfCatalog[pos];
  }

  List<Item> get items => itemIds.map((id) => getById(id)).toList();

  num get totalPrice =>
      items.fold(0, (previousValue, current) => previousValue + current.price);

  void add(Item item) {
    item.isAdded = true;
    itemIds.add(item.id);
    update();
  }

  void remove(Item item) {
    item.isAdded = false;
    itemIds.remove(item.id);
    update();
  }
}

import 'package:catalog_app/core/services/catalog_service.dart';
import 'package:get/get.dart';

import '../models/item.dart';

class HomeViewController extends GetxController {
  final CatalogService _catalogService = CatalogService();
  List<Item> myItemOfCatalog = [];
  RxBool isAdded = false.obs;

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
}

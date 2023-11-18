import 'package:catalog_app/core/services/catalog_service.dart';
import 'package:get/get.dart';

import '../models/item.dart';

class HomeViewController extends GetxController {
  final CatalogService _catalogService = CatalogService();
  List<Item> myItemOfCatalog = [];

  @override
  void onInit() {
    myItemOfCatalog = _catalogService.getItems();
    super.onInit();
  }
}

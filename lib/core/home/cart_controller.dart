import 'package:catalog_app/core/home/home_view_controller.dart';
import 'package:catalog_app/core/models/item.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  HomeViewController homeViewController = HomeViewController();
  HomeViewController get homeView => homeViewController;

  set homeView(HomeViewController newHomeView) {
    homeView = newHomeView;
  }

  List<int> itemIds = [];
  List<Item> get items =>
      itemIds.map((id) => homeViewController.getById(id)).toList();

  num get totalPrice =>
      items.fold(0, (previousValue, current) => previousValue + current.price);

  void add(Item item) {
    itemIds.add(item.id);
  }

  void remove(Item item) {
    itemIds.remove(item.id);
  }
}

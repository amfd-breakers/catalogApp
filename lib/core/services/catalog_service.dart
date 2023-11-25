import 'dart:convert';

import 'package:catalog_app/core/models/item.dart';
import 'package:flutter/services.dart';

class CatalogService {

  Future<List<Item>> loadData() async {
    await Future.delayed(Duration(seconds: 3));
    String stringMainData =
        await rootBundle.loadString("assets/files/catalog_text.json");
    Map<String, dynamic> decodedData = jsonDecode(stringMainData);
    dynamic productData = decodedData["products"];
    List<Item> list =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();

    return list;
    
  }
}

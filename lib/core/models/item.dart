
class Item {

  
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,
    

  });

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        color: map["color"],
        name: map["name"],
        price: map["price"],
        id: map["id"],
        desc: map["desc"],
        image: map["image"]);
  }
  toMap() => {
        "id": id,
        "name": id,
        "color": id,
        "desc": id,
        "image": id,
        "price": id,
      };
}

class CatalogModel {
  static  List<Item> items = [
    Item(
      id: 1,
      name: "Iphone X",
      desc: "This is Iphone X",
      price: 999,
      color: "color",
      image:
          "https://www.freeiconspng.com/thumbs/iphone-x-pictures/apple-iphone-x-pictures-5.png",
    )
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final int price;
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
        id: map["id"],
        name: map["name"],
        desc: map["desc"],
        price: map["price"],
        color: map["color"],
        image: map["image"]);
  }
  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "imageURL": image,
      };
}

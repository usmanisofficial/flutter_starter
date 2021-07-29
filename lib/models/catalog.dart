class CatalogModel {
  static final items = [
    Item(
        "Iphone X",
        1,
        "This is Iphone X",
        999,
        "https://www.freeiconspng.com/thumbs/iphone-x-pictures/apple-iphone-x-pictures-5.png",
        "color")
  ];
}

class Item {
  final String name;
  final int id;
  final String desc;
  final int price;
  final String imageURL;
  final String color;

  Item(this.name, this.id, this.desc, this.price, this.imageURL, this.color);
}

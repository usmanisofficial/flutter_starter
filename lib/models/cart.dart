import 'package:flutter/material.dart';
import 'package:flutter_starter/models/catalog.dart';

class CartModel {
  //
  late CatalogModel _catalog;
  final List<int> _itemIDs = [];
  CatalogModel get catalog => _catalog;
  set catalog(CatalogModel newcatalog) {
    // ignore: unnecessary_null_comparison
    assert(newcatalog != null);
    _catalog = newcatalog;
  }

  //Get Items in cart
  List<Item> get items => _itemIDs.map((id) => _catalog.getbyID(id)).toList();
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);
  //Add items
  void add(Item item) {
    _itemIDs.add(item.id);
  }

  //Remove items
  void remove(Item item) {
    _itemIDs.remove(item.id);
  }
}

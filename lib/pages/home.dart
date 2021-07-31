import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_starter/models/catalog.dart';
import 'package:flutter_starter/widgets/ItemWidget.dart';
import 'package:flutter_starter/widgets/drawer.dart';
import 'dart:convert';

//git readded
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    //await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var itemsData = decodedData["products"];
    CatalogModel.items =
        List.from(itemsData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ItemWidget(
                item: CatalogModel.items[index],
              );
            },
            itemCount: CatalogModel.items.length,
          ),
        ),
        drawer: MyDrawer());
  }
}

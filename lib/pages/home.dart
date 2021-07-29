import 'package:flutter/material.dart';
import 'package:flutter_starter/models/catalog.dart';
import 'package:flutter_starter/widgets/ItemWidget.dart';
import 'package:flutter_starter/widgets/drawer.dart';

//git readded
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(50, (index) => CatalogModel.items[0]);
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ItemWidget(
                item: dummyList[index],
              );
            },
            itemCount: dummyList.length,
          ),
        ),
        drawer: MyDrawer());
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_starter/pages/drawer.dart';

//git readded
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Center(
          child: Container(
            child: Text('Center Widget'),
          ),
        ),
        drawer: MyDrawer());
  }
}

import 'package:flutter/material.dart';

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
      drawer: Drawer(
        child: Text('Drawer'),
        // ``````````````````\\\\
      ),
    );
  }
}

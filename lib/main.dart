import 'package:flutter/material.dart';
import 'package:mcflutter/changing_icon/icon.dart';
import 'package:mcflutter/changing_icon/card_upper.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: McFlutter(),
    );
  }
}

class McFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'McFlutter',
          ),
      ),
      body: Column(
        children: [
          CardUpper(),
          IconsBar(),
        ],
      ),
    );
  }
}



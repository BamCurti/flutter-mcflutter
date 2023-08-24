import 'package:flutter/material.dart';
import 'package:mcflutter/changing_icon/icon.dart';
import 'package:mcflutter/changing_icon/banner.dart';


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
        title: const Text('Flutter McFlutter'),
      ),
      body: Column(
        children: [
          BannerUser(),
          IconsBar(),
        ],
      ),
    );
  }
}



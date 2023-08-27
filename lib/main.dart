import 'package:flutter/material.dart';
import 'package:mcflutter/changing_icon/presentation_card.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'McFlutter',
          ),
      ),
      body: SingleChildScrollView(child: PresentationCard())
    );
  }
}

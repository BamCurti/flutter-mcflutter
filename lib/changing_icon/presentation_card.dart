import 'package:flutter/material.dart';
import "package:mcflutter/changing_icon/card_upper.dart";
import "package:mcflutter/changing_icon/icon.dart";

class PresentationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black)
      ),
      child: Column(
        children: [
          CardUpper(),
          IconsBar(),
        ],
      ),
    );
  }
}
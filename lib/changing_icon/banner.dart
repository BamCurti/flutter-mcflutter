import 'package:flutter/material.dart';


class BannerUser extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.person,
          size: 60,
          color: Colors.black,
        ),
        Column(
          children: [
            Text("Flutter McFlutter"),
            Text("Experienced App Developer")
          ]
        )
      ],
    );
  }
}
import 'package:flutter/material.dart';


class CardUpper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BannerUser(),
        const DirectionInfo(direction: "123 Main Street", phone: "(415) 555-0198")
      ],
    );
  }
}


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
            Text(
              "Flutter McFlutter",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500
              ),
              ),
            Text(
              "Experienced App Developer",
              style: TextStyle(
                fontWeight: FontWeight.w500
              ),
              )
          ]
        )
      ],
    );
  }
}


class DirectionInfo extends StatelessWidget {
  final String direction;
  final String phone;

  const DirectionInfo({required this.direction, required this.phone});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(direction),
        Text(phone),
      ],
    )
    );
  }
}
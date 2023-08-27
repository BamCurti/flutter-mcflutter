import 'package:flutter/material.dart';

class ChangingIcon extends StatefulWidget {
  final IconData icon;
  final String name;

  const ChangingIcon({required this.icon, required this.name});

  @override
  _ChangingIconState createState() => _ChangingIconState();
}


class _ChangingIconState extends State<ChangingIcon> {
  Color _buttonColor = Colors.black;

  void _changeColor() {
    setState(() {
      _buttonColor = _buttonColor == Colors.black ? 
        Colors.indigo : 
        Colors.black;

      String name = widget.name;
      // show snack bar
       final snackBar = SnackBar(
        content: Text("You clicked the $name button"),
        action: SnackBarAction(
          label: "Undo", 
          onPressed: () {}),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeColor,
      child: Container(
        margin: const EdgeInsets.all(8),
        width: 68,
        height: 52,
        color: Colors.white,
        child: Icon(
          widget.icon,
          color: _buttonColor,
        ),
      ),
    );
  }
}

class IconsBar extends StatelessWidget {
  @override Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ChangingIcon(icon: Icons.person, name: "Person"),
        ChangingIcon(icon: Icons.timer, name: "Timer"),
        ChangingIcon(icon: Icons.smartphone, name: "Smartphone"),
        ChangingIcon(icon: Icons.phone_android, name: "Android"),
      ],
    );
  }
}
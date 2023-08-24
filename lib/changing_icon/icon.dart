import 'package:flutter/material.dart';

class ChangingIcon extends StatefulWidget {
  final IconData icon;

  const ChangingIcon({required this.icon});

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
        ChangingIcon(icon: Icons.person),
        ChangingIcon(icon: Icons.timer),
        ChangingIcon(icon: Icons.smartphone),
        ChangingIcon(icon: Icons.phone_android),
      ],
    );
  }
}
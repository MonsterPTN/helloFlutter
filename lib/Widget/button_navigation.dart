import 'package:flutter/material.dart';

class ButtonNavigation extends StatelessWidget {
  final Function()? onPressed;
  final String text;
  const ButtonNavigation(
      {Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50,
      color: Colors.red,
      onPressed: onPressed,
      child: Text(text),
    );
  }
}

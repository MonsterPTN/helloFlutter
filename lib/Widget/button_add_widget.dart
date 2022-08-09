import 'package:flutter/material.dart';

class ButtonAdd extends StatelessWidget {
  final String text;
  final Color? color;
  final Function() onPressed1;
  const ButtonAdd({
    Key? key,
    required this.onPressed1,
    required this.text,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: InkWell(
        onTap: onPressed1,
        child: Container(
          color: color ?? Colors.black,
          alignment: Alignment.center,
          height: 48,
          width: MediaQuery.of(context).size.width,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white, fontSize: 14),
          ),
        ),
      ),
    );
  }
}

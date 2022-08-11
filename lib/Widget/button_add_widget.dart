import 'package:flutter/material.dart';
import 'package:ui/themes/style_text.dart';

class ButtonAdd extends StatelessWidget {
  final String text;
  final Color? color;
  final Color? colorText;
  final Function() onPressed1;
  const ButtonAdd({
    Key? key,
    required this.onPressed1,
    required this.text,
    this.color,
    this.colorText,
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
            style: StylesText.medium14Text
                .copyWith(color: colorText ?? Colors.black),
          ),
        ),
      ),
    );
  }
}

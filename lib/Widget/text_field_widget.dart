import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String textInput;
  final int? lengMax;
  final Icon? iconRight;
  const TextFieldWidget(
      {Key? key, required this.textInput, this.lengMax, this.iconRight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: lengMax,
      decoration: InputDecoration(
        prefixIcon: iconRight,
        hintText: textInput,
        counterText: '',
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TextFieldNumberWidget extends StatelessWidget {
  final String textInput;
  final int? maxLength;
  const TextFieldNumberWidget(
      {Key? key, required this.textInput, this.maxLength})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: maxLength,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: textInput,
        counterText: '',
      ),
    );
  }
}

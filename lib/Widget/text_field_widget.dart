import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String textInput;
  const TextFieldWidget({Key? key, required this.textInput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: textInput,
      ),
    );
  }
}

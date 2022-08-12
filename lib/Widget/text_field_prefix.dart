import 'package:flutter/material.dart';

class TextFieldPrefix extends StatelessWidget {
  final String textHint;
  final Icon icon;
  final int? maxLength;
  const TextFieldPrefix({
    Key? key,
    this.maxLength,
    required this.textHint,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: maxLength,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        counterText: '',
        hintText: textHint,
        prefixIconConstraints: const BoxConstraints(
          minWidth: 23,
          maxHeight: 20,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: icon,
        ),
      ),
    );
  }
}

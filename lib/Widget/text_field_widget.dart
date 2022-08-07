import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String text;
  final String textInput;
  const TextFieldWidget({Key? key, required this.text, required this.textInput})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: textInput,
          ),
        ),
        const SizedBox(
          height: 30,
        )
      ],
    );
  }
}

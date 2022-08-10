import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextFieldWidget extends StatelessWidget {
  final String textInput;
  final int? lengMax;
  final SvgPicture? iconRight;
  const TextFieldWidget(
      {Key? key, required this.textInput, this.lengMax, this.iconRight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: lengMax,
      decoration: InputDecoration(
        suffixIcon: Padding(
          padding: const EdgeInsets.all(12.0),
          child: iconRight,
        ),
        hintText: textInput,
        counterText: '',
      ),
    );
  }
}

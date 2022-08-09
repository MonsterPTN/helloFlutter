import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui/themes/app_colors.dart';

class SearchFieldWidget extends StatelessWidget {
  final String text;
  final SvgPicture icon;
  final int? maxLength;
  const SearchFieldWidget(
      {Key? key, required this.text, this.maxLength, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.textFieldColor,
      height: 47,
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: TextFormField(
          maxLength: maxLength,
          decoration: InputDecoration(
            border: InputBorder.none,
            labelText: text,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            labelStyle: TextStyle(color: AppColors.hintText),
            counterText: '',
            suffixIcon: Padding(
              padding: const EdgeInsets.all(12.0),
              child: icon,
            ),
          ),
        ),
      ),
    );
  }
}

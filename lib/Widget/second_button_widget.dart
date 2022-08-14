import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

class SecondButtonWidget extends StatelessWidget {
  final String text;
  final Function()? onPress;
  const SecondButtonWidget({Key? key, required this.text, this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.backgroundApp,
          border: Border.all(color: Colors.black, width: 2),
        ),
        height: 48,
        child: Text(
          text,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

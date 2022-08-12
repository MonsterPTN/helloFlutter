import 'package:flutter/material.dart';
import 'package:ui/themes/style_text.dart';

import '../themes/app_colors.dart';

class ThirdButtonWidget extends StatelessWidget {
  final String text;
  final String status;
  const ThirdButtonWidget({Key? key, required this.text, required this.status})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        decoration: BoxDecoration(
          color: AppColors.bttomColor,
        ),
        height: 83,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: AppColors.backgroundApp,
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.error,
                  color: AppColors.backgroundApp,
                ),
                const SizedBox(
                  width: 7.5,
                ),
                Text(
                  status,
                  style: StylesText.medium16Text
                      .copyWith(color: AppColors.backgroundApp),
                ),
                const SizedBox(
                  width: 13.5,
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: AppColors.backgroundApp,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

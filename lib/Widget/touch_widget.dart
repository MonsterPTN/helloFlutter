import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui/themes/app_colors.dart';
import 'package:ui/themes/style_text.dart';

class TouchWidget extends StatelessWidget {
  final String title;
  final Function()? onPress;
  final SvgPicture icon;
  final SvgPicture? icon2;
  final Widget? onOff;
  const TouchWidget(
      {Key? key,
      required this.title,
      this.onPress,
      required this.icon,
      this.icon2,
      this.onOff})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.backgroundApp,
      padding: const EdgeInsets.all(5),
      alignment: Alignment.center,
      child: InkWell(
        onTap: onPress,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    icon,
                    Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: Text(
                          title,
                          style: StylesText.medium16Text,
                        )),
                  ],
                ),
                Container(
                  child: icon2 ?? Transform.scale(scale: 0.6, child: onOff),
                ),
              ],
            ),
            const SizedBox(height: 15),
            const Divider(
              color: Colors.grey,
              height: 1,
            ),
          ],
        ),
      ),
    );
  }
}

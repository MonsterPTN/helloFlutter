import 'package:flutter/material.dart';

class TouchWidget extends StatelessWidget {
  final String title;
  final Function()? onPress;
  final Icon icon;
  final Icon? icon2;
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
      margin: const EdgeInsets.only(top: 10, bottom: 5),
      padding: const EdgeInsets.all(5),
      height: 50,
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
                        child: Text(title)),
                  ],
                ),
                Container(
                  child: icon2 ?? Transform.scale(scale: 0.6, child: onOff),
                ),
              ],
            ),
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

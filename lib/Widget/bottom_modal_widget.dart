import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui/themes/style_text.dart';

import '../themes/app_colors.dart';
import 'button_add_widget.dart';

class BottomModalWidget extends StatelessWidget {
  final SvgPicture svgPicture;
  final String textHeader;
  final String text;
  final String btn1;
  final String btn2;
  final Function()? onPressbtn1;
  const BottomModalWidget(
      {Key? key,
      required this.svgPicture,
      required this.textHeader,
      required this.text,
      required this.btn1,
      required this.btn2,
      this.onPressbtn1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 448,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 25.75,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  child: SvgPicture.asset('assets/svg/ic_close.svg'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 15.75,
            ),
            svgPicture,
            const SizedBox(
              height: 13.44,
            ),
            Text(
              textHeader,
              style: StylesText.styleText26,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              text,
              style: StylesText.mediumBoldText1,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            PrimariButton(
              onPressed1: onPressbtn1 ?? () {},
              text: btn1,
              color: AppColors.primari,
              colorText: AppColors.backgroundApp,
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    )),
                alignment: Alignment.center,
                height: 48,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  btn2,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

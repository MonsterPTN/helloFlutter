import 'package:flutter/material.dart';
import 'package:ui/Widget/slider_widget.dart';
import 'package:ui/themes/app_colors.dart';
import 'package:ui/themes/style_text.dart';

class AppraisailTabNationWideScreen extends StatefulWidget {
  const AppraisailTabNationWideScreen({Key? key}) : super(key: key);

  @override
  State<AppraisailTabNationWideScreen> createState() =>
      _AppraisailTabNationWideScreenPageState();
}

class _AppraisailTabNationWideScreenPageState
    extends State<AppraisailTabNationWideScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundApp,
      body: Column(
        children: [
          Expanded(
            child: _widgetSlider(
              text: 'Sourcing price of Toyota',
              rangeStart: 10,
              rangeEnd: 40,
              rangeMinSlider: 0,
              rangeMaxSlider: 50,
            ),
          ),
          Expanded(
            child: _widgetSlider(
              text: 'Market C2C price',
              rangeStart: 10,
              rangeEnd: 40,
              rangeMinSlider: 0,
              rangeMaxSlider: 50,
            ),
          ),
          Expanded(
            child: _widgetSlider(
              text: 'Market B2C price',
              rangeStart: 10,
              rangeEnd: 40,
              rangeMinSlider: 0,
              rangeMaxSlider: 50,
            ),
          ),
          Expanded(
            child: _widgetSlider(
              text: 'B2B price',
              rangeStart: 10,
              rangeEnd: 40,
              rangeMinSlider: 0,
              rangeMaxSlider: 50,
            ),
          ),
          Expanded(
            child: _widgetSlider(
              text: 'Retail price of Toyota',
              rangeStart: 10,
              rangeEnd: 40,
              rangeMinSlider: 0,
              rangeMaxSlider: 50,
            ),
          ),
          const SizedBox(
            height: 44,
          ),
        ],
      ),
    );
  }

  Widget _widgetSlider({
    required String text,
    required double rangeStart,
    required double rangeEnd,
    required int rangeMinSlider,
    required int rangeMaxSlider,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 26,
        ),
        Text(
          text,
          style: StylesText.styleText4,
        ),
        const SizedBox(
          height: 5,
        ),
        Expanded(
          child: SliderWidget(
            rangeStart: rangeStart,
            rangeEnd: rangeEnd,
            rangeMinSlider: rangeMinSlider,
            rangeMaxSlider: rangeMaxSlider,
          ),
        ),
      ],
    );
  }
}

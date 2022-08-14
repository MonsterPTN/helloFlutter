import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
// ignore: depend_on_referenced_packages
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:ui/themes/style_text.dart';

import '../themes/app_colors.dart';

// ignore: must_be_immutable
class SliderCusWidget extends StatefulWidget {
  double? rangeStart;
  double? rangeEnd;
  final int rangeMinSlider;
  final int rangeMaxSlider;
  final String? textStart;
  final String? textEnd;
  final String? textStart1;
  final String? textEnd1;
  final String? title;
  SliderCusWidget({
    Key? key,
    this.rangeEnd,
    this.rangeStart,
    required this.rangeMinSlider,
    required this.rangeMaxSlider,
    this.textStart,
    this.textEnd,
    this.textStart1,
    this.textEnd1,
    this.title,
  }) : super(key: key);

  @override
  State<SliderCusWidget> createState() => _SliderCusWidgetState();
}

class _SliderCusWidgetState extends State<SliderCusWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundApp,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title ?? '',
            style: StylesText.mediumBoldText,
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                '${widget.textStart ?? ''}${widget.rangeStart}${widget.textStart1 ?? ''} - ${widget.textEnd ?? ''}${widget.rangeEnd}${widget.textEnd1 ?? ''}',
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 18,
              ),
            ],
          ),
          SfRangeSliderTheme(
            data: SfRangeSliderThemeData(),
            child: SfRangeSlider(
              stepSize: 1,
              interval: 1,
              min: widget.rangeMinSlider,
              max: widget.rangeMaxSlider,
              activeColor: AppColors.black,
              startThumbIcon: Container(
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset('assets/svg/ic_slider.svg'),
              ),
              endThumbIcon: Container(
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset('assets/svg/ic_slider.svg'),
              ),
              values: SfRangeValues(widget.rangeStart, widget.rangeEnd),
              onChanged: (value) {
                setState(
                  () {
                    widget.rangeStart = value.start;
                    widget.rangeEnd = value.end;
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

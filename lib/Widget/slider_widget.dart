import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:syncfusion_flutter_core/theme.dart';

import '../themes/app_colors.dart';

class SliderWidget extends StatefulWidget {
  double? rangeStart;
  double? rangeEnd;
  final int rangeMinSlider;
  final int rangeMaxSlider;
  SliderWidget({
    Key? key,
    this.rangeEnd,
    this.rangeStart,
    required this.rangeMinSlider,
    required this.rangeMaxSlider,
  }) : super(key: key);

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundApp,
      body: Column(
        children: [
          Row(
            children: [
              Text(
                '₱${widget.rangeStart} - ₱${widget.rangeEnd}',
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
              activeColor: AppColors.primari,
              startThumbIcon: Container(
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.backgroundApp,
                    shape: BoxShape.circle,
                  ),
                  margin: const EdgeInsets.all(1),
                ),
              ),
              endThumbIcon: Container(
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.backgroundApp,
                    shape: BoxShape.circle,
                  ),
                  margin: const EdgeInsets.all(1),
                ),
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

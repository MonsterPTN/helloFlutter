import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
// ignore: depend_on_referenced_packages

import '../themes/app_colors.dart';

class Slider1Widget extends StatefulWidget {
  const Slider1Widget({Key? key}) : super(key: key);

  @override
  State<Slider1Widget> createState() => _Slider1WidgetState();
}

class _Slider1WidgetState extends State<Slider1Widget> {
  double _value = 4.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 33,
        ),
        Text(
          '$_value',
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        SfSlider(
          stepSize: 1,
          interval: 1,
          min: 0,
          max: 50,
          activeColor: Colors.transparent,
          thumbIcon: Container(
            decoration: BoxDecoration(
              color: AppColors.black,
              shape: BoxShape.circle,
            ),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
              margin: const EdgeInsets.all(1),
            ),
          ),
          value: _value,
          onChanged: (value) {
            setState(() {
              _value = value;
            });
          },
        ),
      ],
    );
  }
}

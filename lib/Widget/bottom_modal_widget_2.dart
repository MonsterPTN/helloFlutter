import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui/Widget/text_field_widget.dart';
import 'package:ui/modules/SimilarModels/similar_models_screen.dart';

import '../themes/app_colors.dart';
import '../themes/style_text.dart';
import 'button_add_widget.dart';

class BottomModal2Widget extends StatelessWidget {
  const BottomModal2Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      height: 672,
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
            height: 36.25,
          ),
          SvgPicture.asset('assets/svg/ic_adjustment.svg'),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'Threshold Limit',
            style: StylesText.styleText26,
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Year model',
                style: StylesText.mediumBoldText,
              ),
              const SizedBox(
                height: 12,
              ),
              const TextFieldWidget(
                textInput: 'Please enter threshold value',
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Enter value to create a threshold for the based year Example: Based year = 2019, Threshold = 1, Year outputs will be from 2018 to 2020',
                style: StylesText.medium14Text.copyWith(
                  fontSize: 13,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Mileage',
                style: StylesText.mediumBoldText,
              ),
              const SizedBox(
                height: 12,
              ),
              const TextFieldWidget(
                textInput: 'Please enter threshold value',
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Enter value to create a threshold for the based year Example: Based year = 2019, Threshold = 1, Year outputs will be from 2018 to 2020',
                style: StylesText.medium14Text.copyWith(
                  fontSize: 13,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          PrimariButton(
            onPressed1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SimilarModelsScreen(),
                ),
              );
            },
            text: 'APPLY',
            color: AppColors.primari,
            colorText: AppColors.backgroundApp,
          ),
          const SizedBox(
            height: 89,
          ),
        ],
      ),
    );
  }
}

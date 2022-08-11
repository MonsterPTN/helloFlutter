import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui/Widget/app_bar_widget.dart';
import 'package:ui/themes/app_colors.dart';
import 'package:ui/themes/style_text.dart';

class AppraisalScreen extends StatefulWidget {
  const AppraisalScreen({Key? key}) : super(key: key);

  @override
  State<AppraisalScreen> createState() => _AppraisalScreenState();
}

class _AppraisalScreenState extends State<AppraisalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        isShowBack: false,
        title: 'Appraisal',
      ),
      body: Container(
        color: AppColors.backgroundApp,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'TMA-TO-000000003',
                      style: StylesText.styleText3,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.error,
                      color: AppColors.primari3,
                    ),
                    Text(
                      'Open',
                      style: StylesText.styleText3.copyWith(
                        color: AppColors.primari3,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SvgPicture.asset('assets/svg/ic_car.svg'),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Car overview',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Car brand',
                      style: StylesText.mediumBoldText,
                    ),
                    Text(
                      'Toyota',
                      style: StylesText.medium16Text,
                    )
                  ],
                ),
                const Divider(),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Model',
                      style: StylesText.mediumBoldText,
                    ),
                    Text(
                      'Fortuner',
                      style: StylesText.medium16Text,
                    )
                  ],
                ),
                const Divider(),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Car brand',
                      style: StylesText.mediumBoldText,
                    ),
                    Text(
                      'Toyota',
                      style: StylesText.medium16Text,
                    )
                  ],
                ),
                const Divider(),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Year model',
                      style: StylesText.mediumBoldText,
                    ),
                    Text(
                      '2021',
                      style: StylesText.medium16Text,
                    )
                  ],
                ),
                const Divider(),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Variant',
                      style: StylesText.mediumBoldText,
                    ),
                    Text(
                      'Fortuner 4X2 Diesel AT',
                      style: StylesText.medium16Text,
                    )
                  ],
                ),
                const Divider(),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Primary color',
                      style: StylesText.mediumBoldText,
                    ),
                    Text(
                      'Expected price',
                      style: StylesText.medium16Text,
                    )
                  ],
                ),
                const Divider(),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Expected price',
                      style: StylesText.mediumBoldText,
                    ),
                    Text(
                      '₱300,000',
                      style: StylesText.medium16Text,
                    )
                  ],
                ),
                const Divider(),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Location',
                      style: StylesText.mediumBoldText,
                    ),
                    Text(
                      'Manila',
                      style: StylesText.medium16Text,
                    )
                  ],
                ),
                const Divider(),
                const SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

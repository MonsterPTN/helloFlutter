import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui/Widget/app_bar_widget.dart';
import 'package:ui/Widget/bottom_modal_widget.dart';
import 'package:ui/Widget/button_add_widget.dart';
import 'package:ui/Widget/dropdown_button_widget.dart';
import 'package:ui/Widget/text_field_widget.dart';
import 'package:ui/modules/AppraisalScreen/appraisal_screen.dart';
import 'package:ui/themes/app_colors.dart';
import 'package:ui/themes/style_text.dart';

class PricingScreen extends StatelessWidget {
  const PricingScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const AppBarWidget(
          isShowBack: false,
          title: 'Similar Models',
        ),
        body: Container(
          color: AppColors.backgroundApp,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 33,
                  ),
                  const Text(
                    'Brand',
                    style: StylesText.mediumBoldText,
                  ),
                  const DropDownButtonWidget(
                    items: [
                      'Lamboghini',
                      'Ferari',
                      'Mescerdes Benz',
                      'Roll Royce'
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'VIN',
                    style: StylesText.mediumBoldText,
                  ),
                  const TextFieldWidget(textInput: 'Please enter'),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'CS',
                    style: StylesText.mediumBoldText,
                  ),
                  const TextFieldWidget(textInput: 'Please enter'),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Plate number',
                    style: StylesText.mediumBoldText,
                  ),
                  const TextFieldWidget(textInput: 'Please enter'),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Model',
                    style: StylesText.mediumBoldText,
                  ),
                  const DropDownButtonWidget(
                    items: [
                      'Lamboghini',
                      'Ferari',
                      'Mescerdes Benz',
                      'Roll Royce'
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Year model',
                    style: StylesText.mediumBoldText,
                  ),
                  const TextFieldWidget(textInput: 'Please enter'),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Variant',
                    style: StylesText.mediumBoldText,
                  ),
                  const DropDownButtonWidget(
                    items: [
                      'Lamboghini',
                      'Ferari',
                      'Mescerdes Benz',
                      'Roll Royce'
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Color',
                    style: StylesText.mediumBoldText,
                  ),
                  const DropDownButtonWidget(
                    items: [
                      'Lamboghini',
                      'Ferari',
                      'Mescerdes Benz',
                      'Roll Royce'
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Mileage',
                    style: StylesText.mediumBoldText,
                  ),
                  const TextFieldWidget(
                    textInput: 'Please enter',
                    textRight: 'km',
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  PrimariButton(
                    onPressed1: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return BottomModalWidget(
                              svgPicture:
                                  SvgPicture.asset('assets/svg/ic_warning.svg'),
                              textHeader: 'CANCEL PROCESS',
                              text:
                                  'You have unsaved content. By leaving the screen, it will be discarded. Are you sure you want to proceed?',
                              btn1: 'KEEP & COUNTINE',
                              btn2: 'DISCARD & LEAVE',
                              onPressbtn1: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const AppraisalScreen(),
                                  ),
                                );
                              },
                            );
                          });
                    },
                    text: 'SUBMIT',
                    color: AppColors.primari,
                    colorText: AppColors.backgroundApp,
                  ),
                  const SizedBox(
                    height: 35,
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

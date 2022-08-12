import 'package:flutter/material.dart';
import 'package:ui/Widget/button_add_widget.dart';
import 'package:ui/Widget/dropdown_button_widget.dart';
import 'package:ui/Widget/text_field_prefix.dart';
import 'package:ui/Widget/text_field_widget.dart';
import 'package:ui/themes/style_text.dart';

import '../../Widget/text_field_number_widget.dart';

class NewAppraisalScreen extends StatefulWidget {
  const NewAppraisalScreen({Key? key}) : super(key: key);

  @override
  State<NewAppraisalScreen> createState() => _NewAppraisalScreenState();
}

class _NewAppraisalScreenState extends State<NewAppraisalScreen> {
  var listItem = [
    'Toyota',
    'Cammry',
    'BenZ',
    'Avendator',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                flex: 9,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(
                            Icons.keyboard_arrow_left_outlined,
                            size: 24,
                          ),
                          Text(
                            'New Appraisal',
                            style: StylesText.styleHeader,
                          ),
                          SizedBox(
                            width: 24,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(
                            Icons.person_outline,
                            size: 24,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Customer details',
                            style: StylesText.styleText1,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      textStatus(text: 'Customer name'),
                      const TextFieldWidget(textInput: 'Please enter'),
                      const SizedBox(
                        height: 24,
                      ),
                      textStatus(text: 'Phone Number'),
                      Row(
                        children: const [
                          Expanded(
                              flex: 1,
                              child: TextFieldPrefix(
                                maxLength: 2,
                                textHint: '63',
                                icon: Icon(
                                  Icons.add_rounded,
                                  size: 14,
                                ),
                              )),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            flex: 4,
                            child: TextFieldNumberWidget(
                              textInput: '999 999 999',
                              maxLength: 9,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      textStatus(text: 'Email'),
                      const TextFieldWidget(textInput: 'Please enter'),
                      const SizedBox(
                        height: 24,
                      ),
                      textStatus(text: 'Expected price'),
                      const TextFieldPrefix(
                        textHint: 'Please enter',
                        icon: Icon(
                          Icons.currency_ruble_rounded,
                          size: 24,
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      textStatus(text: 'Source'),
                      const DropDownButtonWidget(
                        items: ['Please enter', 'Female'],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: PrimariButton(
                  text: "NEXT",
                  color: Colors.red,
                  onPressed1: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget textStatus({required String text}) {
    return Row(
      children: [
        Text(
          text,
          style: StylesText.mediumBoldText,
        ),
      ],
    );
  }
}

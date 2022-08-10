import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui/Widget/app_bar_widget.dart';
import 'package:ui/Widget/text_field_widget.dart';
import 'package:ui/themes/app_colors.dart';
import 'package:ui/themes/style_text.dart';
import 'PickerImage/pickerImage.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        isShowBack: true,
        title: 'My Profile',
        colorAppBar: AppColors.primari,
        colorTitle: Colors.white,
      ),
      body: SafeArea(
        child: Container(
          color: AppColors.primari,
          child: Column(children: [
            Expanded(
              flex: 2,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 23,
                    ),
                    const PickImage(),
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Admam Smith',
                      style:
                          StylesText.styleText1.copyWith(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'admamasmith@gmail.com',
                      style:
                          StylesText.styleText2.copyWith(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'trs_admamith.cruz',
                      style:
                          StylesText.styleText2.copyWith(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: _widgetMain(),
            )
          ]),
        ),
      ),
    );
  }

  Widget _widgetMain() {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Personal Account Settings',
                style: StylesText.mediumBoldText,
              ),
              const Divider(),
              Column(
                children: [
                  TextFieldWidget(
                    textInput: 'First name',
                    iconRight: SvgPicture.asset('assets/svg/ic_edit.svg'),
                  ),
                  const SizedBox(height: 15),
                  TextFieldWidget(
                    textInput: 'Last name',
                    iconRight: SvgPicture.asset('assets/svg/ic_edit.svg'),
                  ),
                  const SizedBox(height: 15),
                  TextFieldWidget(
                    textInput: 'Email',
                    iconRight: SvgPicture.asset('assets/svg/ic_edit.svg'),
                  ),
                  const SizedBox(height: 15),
                  TextFieldWidget(
                    textInput: 'Mobile number',
                    iconRight: SvgPicture.asset('assets/svg/ic_edit.svg'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

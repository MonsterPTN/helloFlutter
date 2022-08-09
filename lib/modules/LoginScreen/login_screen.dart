import 'package:flutter/material.dart';
import 'package:ui/Widget/text_field_widget.dart';
import 'package:ui/modules/NewAppraisal/new_appraisal.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:ui/similar_models.dart';
import 'package:ui/themes/app_colors.dart';
import 'package:ui/themes/style_text.dart';

import '../../Widget/button_add_widget.dart';
import '../../Widget/button_navigation.dart';
import '../ButtonScreen/button_screen.dart';
import '../NavigationBottom/bottom_navigator.dart';
import '../PricingScreen/pricing_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _widgetTextSignIn(text: 'Sign In'),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: const [
                Text(
                  'User ID',
                  style: StylesText.mediumBoldText,
                ),
              ],
            ),
            const TextFieldWidget(textInput: 'Your user ID here'),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: const [
                Text(
                  'Password',
                  style: StylesText.mediumBoldText,
                ),
              ],
            ),
            const TextFieldWidget(textInput: 'Your password here'),
            const SizedBox(
              height: 30,
            ),
            _textForgotPass(text: 'Forgot password'),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: ButtonAdd(
                    text: 'SIGN IN',
                    color: AppColors.primari,
                    onPressed1: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const BottomNavigatorScreen()));
                    },
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        SvgPicture.asset('assets/svg/ic_find_id.svg'),
                      ],
                    )),
              ],
            ),
            const SizedBox(
              height: 26,
            ),
            _widgetButonNavigation(),
          ],
        ),
      ),
    );
  }

  Widget _widgetButonNavigation() {
    return Wrap(
      children: [
        ButtonNavigation(
          text: 'SimilarModels',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SimilarModels()),
            );
          },
        ),
        ButtonNavigation(
          text: 'PricingScreen',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PricingScreen()),
            );
          },
        ),
        ButtonNavigation(
          text: 'DemoWidget',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DemoWidget()),
            );
          },
        ),
        ButtonNavigation(
          text: 'new appraisal',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const NewAppraisalScreen()),
            );
          },
        ),
      ],
    );
  }

  Widget _widgetTextSignIn({required String text}) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 40),
      ),
    );
  }

  Widget _textForgotPass({required String text}) {
    return Container(
      alignment: Alignment.topLeft,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ui/Widget/text_field_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui/themes/app_colors.dart';
import 'package:ui/themes/style_text.dart';

import '../../Widget/button_add_widget.dart';
import '../NavigationBottom/bottom_navigator.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.backgroundApp,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _widgetTextSignIn(text: 'Sign In'),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'User ID',
                style: StylesText.mediumBoldText,
              ),
              const TextFieldWidget(textInput: 'Your user ID here'),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Password',
                style: StylesText.mediumBoldText,
              ),
              const TextFieldWidget(textInput: 'Your password here'),
              const SizedBox(
                height: 30,
              ),
              _textForgotPass('Forgot password'),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Expanded(
                    child: PrimariButton(
                      text: 'SIGN IN',
                      color: AppColors.primari,
                      colorText: AppColors.backgroundApp,
                      onPressed1: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BottomNavigatorScreen(),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SvgPicture.asset('assets/svg/ic_find_id.svg'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _widgetTextSignIn({required String text}) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 40,
        ),
      ),
    );
  }

  Widget _textForgotPass(String text) {
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

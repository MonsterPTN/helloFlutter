import 'package:flutter/material.dart';
import 'package:ui/Widget/text_field_widget.dart';

import 'package:ui/similar_models.dart';

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
            const TextFieldWidget(text: 'Email', textInput: 'Your email here'),
            const TextFieldWidget(
                text: 'Password', textInput: 'Your password here'),
            _textForgotPass(text: 'Forgot password'),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                ButtonAdd(
                  text: 'Sign in',
                  onPressed1: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const BottomNavigatorScreen()));
                  },
                ),
                const Icon(Icons.face)
              ],
            ),
            ButtonNavigation(
              text: 'SimilarModels',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SimilarModels()),
                );
              },
            ),
            ButtonNavigation(
              text: 'PricingScreen',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PricingScreen()),
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
          ],
        ),
      ),
    );
  }

  Widget _widgetTextSignIn({required String text}) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
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

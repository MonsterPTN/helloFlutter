import 'package:flutter/material.dart';
import 'package:ui/themes/app_colors.dart';
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
      body: Container(
        color: AppColors.primari,
        child: Column(children: [
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _widgetHeader(
                  text: 'My Profile',
                  icon: const Icon(
                    Icons.keyboard_arrow_left,
                    size: 36,
                    color: Colors.white,
                  ),
                ),
                const PickImage(),
                _widgetText(text: 'Admam Smith'),
                _widgetText2(text: 'admamasmith@gmail.com'),
                _widgetText2(text: 'trs_admamith.cruz')
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: _widgetMain(),
          )
        ]),
      ),
    );
  }

  Widget _widgetHeader({required String text, required Icon icon}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(margin: const EdgeInsets.only(left: 20), child: icon),
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Container(
            margin: const EdgeInsets.only(right: 20),
            width: 24,
          )
        ],
      ),
    );
  }

  Widget _widgetText({required String text}) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Text(
        text,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _widgetText2({required String text}) {
    return Container(
      margin: const EdgeInsets.only(top: 5),
      child: Text(
        text,
        style: const TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _widgetMain() {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
        child: Column(
          children: [
            _widgetText3(text: 'Personal Account Settings'),
            _widgetDivider(),
            Column(
              children: [
                _input(
                    text: 'First name',
                    icon: const Icon(Icons.border_color_outlined)),
                _input(
                    text: 'Last Name',
                    icon: const Icon(Icons.border_color_outlined)),
                _input(
                    text: 'Email',
                    icon: const Icon(Icons.border_color_outlined)),
                _input(
                    text: 'Mobie number',
                    icon: const Icon(Icons.border_color_outlined)),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _input({required String text, required Icon icon}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: text,
          suffixIcon: icon,
        ),
      ),
    );
  }

  Widget _widgetText3({required String text}) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _widgetDivider() {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      child: const Divider(
        color: Colors.grey,
        height: 1,
      ),
    );
  }
}

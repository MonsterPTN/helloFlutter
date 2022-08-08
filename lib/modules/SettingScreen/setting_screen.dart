import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Widget/switch_widget.dart';
import '../../Widget/touch_widget.dart';
import '../MyProfileScreen/my_profile_screen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            _widgetHeader(text: 'Setting'),
            TouchWidget(
                title: "My profile",
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyProfileScreen()));
                },
                icon: const Icon(Icons.person),
                icon2: const Icon(Icons.border_color_outlined)),
            const TouchWidget(
                title: "Biometric login",
                icon: Icon(Icons.lock_outline),
                onOff: SwitchWidget()),
            const TouchWidget(
              title: "Change Password",
              icon: Icon(Icons.border_color_outlined),
            ),
            const TouchWidget(
              title: "Sign out",
              icon: Icon(Icons.logout_outlined),
            ),
          ],
        ),
      ),
    );
  }

  Widget _widgetHeader({required String text}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
      ),
    );
  }
}

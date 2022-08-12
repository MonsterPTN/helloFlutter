import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui/Widget/app_bar_widget.dart';
import 'package:ui/themes/app_colors.dart';

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
      appBar: const AppBarWidget(
        title: 'Setting',
      ),
      body: Container(
        color: AppColors.backgroundApp,
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            TouchWidget(
              title: "My profile",
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyProfileScreen(),
                  ),
                );
              },
              icon: SvgPicture.asset('assets/svg/ic_user.svg'),
              icon2: SvgPicture.asset('assets/svg/ic_arrow_right_red.svg'),
            ),
            const SizedBox(
              height: 16.5,
            ),
            TouchWidget(
              title: "Biometric login",
              icon: SvgPicture.asset('assets/svg/ic_face_id.svg'),
              onOff: const SwitchWidget(),
            ),
            const SizedBox(
              height: 16.5,
            ),
            TouchWidget(
              title: "Change Password",
              icon: SvgPicture.asset('assets/svg/ic_lock.svg'),
              icon2: SvgPicture.asset('assets/svg/ic_edit.svg'),
            ),
            const SizedBox(
              height: 16.5,
            ),
            TouchWidget(
              title: "Sign out",
              icon: SvgPicture.asset('assets/svg/ic_sign_out.svg'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui/themes/app_colors.dart';

import '../HomeScreen/home_sceen.dart';
import '../ListViewScreen/listview_screen.dart';
import '../SettingScreen/setting_screen.dart';

class BottomNavigatorScreen extends StatelessWidget {
  const BottomNavigatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyBar(),
    );
  }
}

class BodyBar extends StatefulWidget {
  const BodyBar({Key? key}) : super(key: key);

  @override
  State<BodyBar> createState() => _BodyBarState();
}

class _BodyBarState extends State<BodyBar> {
  int _currentIndex = 0;
  final tabs = [
    const HomeScreen(),
    const ListViewScreen(),
    const SettingScreen(),
    const Center(child: Text("Notifications")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: tabs[_currentIndex],
        bottomNavigationBar: Row(
          children: [
            buildNavigationItem(
                icon: SvgPicture.asset('assets/svg/ic_home.svg'),
                index: 0,
                text1: 'Home'),
            buildNavigationItem(
                icon: SvgPicture.asset('assets/svg/ic_appraisal_list.svg'),
                index: 1,
                text1: 'Appraisal List'),
            buildNavigationItem(
                icon: SvgPicture.asset('assets/svg/ic_setting.svg'),
                index: 2,
                text1: 'Settings'),
            buildNavigationItem(
                icon: SvgPicture.asset('assets/svg/ic_notifications.svg'),
                index: 3,
                text1: 'Notifications'),
          ],
        ));
  }

  Widget buildNavigationItem(
      {required SvgPicture icon, required int index, required String text1}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 4,
        height: 60,
        decoration: index == _currentIndex
            ? BoxDecoration(
                color: Colors.black,
                border:
                    Border(top: BorderSide(color: AppColors.primari, width: 3)))
            : const BoxDecoration(
                color: Colors.black,
                border: Border(top: BorderSide(color: Colors.black, width: 3))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            Text(
              text1,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}

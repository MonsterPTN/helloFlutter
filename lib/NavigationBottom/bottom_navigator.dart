import 'package:flutter/material.dart';
import 'package:ui/HomeScreen/home_sceen.dart';
import 'package:ui/SettingScreen/setting_screen.dart';

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
    const Center(child: Text("Appraisal List")),
    const SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: tabs[_currentIndex],
        bottomNavigationBar: Row(
          children: [
            buildNavigationItem(Icons.home_outlined, 0, "Home"),
            buildNavigationItem(Icons.pages, 1, "Appraisal List"),
            buildNavigationItem(Icons.settings, 2, "Settings"),
          ],
        ));
  }

  Widget buildNavigationItem(IconData icon, int index, String text1) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 3,
        height: 60,
        decoration: index == _currentIndex
            ? const BoxDecoration(
                color: Colors.black,
                border: Border(top: BorderSide(color: Colors.red, width: 3)))
            : const BoxDecoration(
                color: Colors.black,
                border: Border(top: BorderSide(color: Colors.black, width: 3))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            Text(
              text1,
              style: const TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

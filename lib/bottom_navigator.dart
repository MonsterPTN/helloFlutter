import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui/home_sceen.dart';
import 'package:ui/setting_screen.dart';

class BottomNavigatorScreen extends StatelessWidget {
  const BottomNavigatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    Container(
      child: HomeScreen(),
    ),
    Container(
      child: Center(child: Text("Appraisal List")),
    ),
    Container(
      child: SettingScreen(),
    ),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            Text(
              text1,
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        width: MediaQuery.of(context).size.width / 3,
        height: 60,
        decoration: index == _currentIndex
            ? BoxDecoration(
                color: Colors.black,
                border: Border(top: BorderSide(color: Colors.red, width: 3)))
            : BoxDecoration(
                color: Colors.black,
                border: Border(top: BorderSide(color: Colors.black, width: 3))),
      ),
    );
  }
}

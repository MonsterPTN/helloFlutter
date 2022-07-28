import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui/my_profile_screen.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: [
          Container(
            margin: const EdgeInsets.only(bottom: 30),
            child: Text(
              "Settings",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 5),
            padding: const EdgeInsets.all(5),
            height: 50,
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyProfileScreen()));
              },
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.people),
                          Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: Text("My profile")),
                        ],
                      ),
                      Icon(Icons.keyboard_arrow_right)
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Divider(
                      color: Colors.grey,
                      height: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5, bottom: 5),
            padding: const EdgeInsets.all(5),
            height: 50,
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {},
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.face),
                            Container(
                                margin: const EdgeInsets.only(left: 10),
                                child: Text("Biometric login")),
                          ],
                        ),
                        Switch(),
                      ],
                    ),
                  ),
                  Container(
                    child: Divider(
                      color: Colors.grey,
                      height: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 5),
            padding: const EdgeInsets.all(5),
            height: 50,
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {},
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.lock_outline),
                          Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: Text("Change Password")),
                        ],
                      ),
                      Icon(Icons.border_color_outlined)
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Divider(
                      color: Colors.grey,
                      height: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 5),
            padding: const EdgeInsets.all(5),
            height: 50,
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {},
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.logout),
                          Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: Text("Sign Out")),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Divider(
                      color: Colors.grey,
                      height: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class Switch extends StatefulWidget {
  const Switch({Key? key}) : super(key: key);

  @override
  State<Switch> createState() => _SwitchState();
}

class _SwitchState extends State<Switch> {
  bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 0.6,
      child: CupertinoSwitch(
        value: _switchValue,
        onChanged: (value) {
          setState(() {
            _switchValue = value;
          });
        },
      ),
    );
  }
}

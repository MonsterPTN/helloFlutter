import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui/button_screen.dart';
import 'package:ui/pricing_screen.dart';
import 'package:ui/similar_models.dart';

import 'bottom_navigator.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Sign in",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Email",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Your email here',
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Password",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Your password here',
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(top: 30),
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    Expanded(
                      flex: 8,
                      child: MaterialButton(
                        height: 50,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const BottomNavigatorScreen()));
                        },
                        child: Text(
                          "SIGN IN",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.black,
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: InkWell(
                          onTap: () {
                            print("Tap Ink");
                          },
                          child: Icon(
                            Icons.face_retouching_natural_outlined,
                            size: 50,
                          ),
                        ))
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    MaterialButton(
                      child: Text("SimilarModels"),
                      height: 50,
                      color: Colors.red,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SimilarModels()),
                        );
                      },
                    ),
                    MaterialButton(
                      child: Text("Pricing"),
                      height: 50,
                      color: Colors.red,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PricingScreen()),
                        );
                      },
                    ),
                    MaterialButton(
                      child: Text("Screen"),
                      height: 50,
                      color: Colors.red,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ButtonScreen()),
                        );
                      },
                    ),
                  ],
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}

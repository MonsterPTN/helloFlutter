import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://bridgestone-mea.com/media/67891/how-your-tyres-are-affecting-your-car-s-performance.jpg'),
          ),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: _widgetHeader(),
            ),
            Expanded(flex: 1, child: _widgetBody())
          ],
        ),
      ),
    );
  }
}

class _widgetBody extends StatelessWidget {
  const _widgetBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Icon(
                        Icons.settings_outlined,
                        size: 48,
                      )),
                  Text(
                    "Appraisal",
                    textAlign: TextAlign.center,
                  ),
                  MaterialButton(
                    height: 50,
                    onPressed: () {},
                    child: Text(
                      "GO",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.red,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: Icon(
                          Icons.assignment_outlined,
                          size: 48,
                        )),
                    Text(
                      "Pricing",
                      textAlign: TextAlign.center,
                    ),
                    MaterialButton(
                      height: 50,
                      onPressed: () {},
                      child: Text(
                        "GO",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.red,
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

class _widgetHeader extends StatelessWidget {
  const _widgetHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 60),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: Text(
                    "Hello,",
                    style: TextStyle(
                        fontSize: 36,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                flex: 3,
              ),
              Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Icon(
                        Icons.notifications_outlined,
                        color: Colors.white,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 12),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                'https://www.kindacode.com/wp-content/uploads/2021/01/blue.jpg',
                              )),
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                        height: 48,
                        width: 48,
                      )
                    ],
                  ))
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Adam Smith",
                  style: TextStyle(
                      fontSize: 36,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

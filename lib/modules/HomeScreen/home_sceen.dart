import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://bridgestone-mea.com/media/67891/how-your-tyres-are-affecting-your-car-s-performance.jpg'),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: _widgetLeftHeader(text: 'Hello, Adam Smith'),
                  ),
                  Expanded(
                    flex: 1,
                    child: _widgetRightHeader(
                      url:
                          'https://www.kindacode.com/wp-content/uploads/2021/01/blue.jpg',
                      icon: const Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              _widgetBodyButton()
            ],
          ),
        ),
      ),
    );
  }

  Widget _widgetLeftHeader({required String text}) {
    return Container(
      margin: const EdgeInsets.only(
        left: 20,
      ),
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 36, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _widgetRightHeader({required String url, required Icon icon}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        icon,
        Container(
          margin: const EdgeInsets.only(left: 12),
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                url,
              ),
            ),
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
    );
  }

  Widget _widgetBodyButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 1,
          child: _widgetHome(
            title: 'Appraisal',
            onPressed: _widgetHome,
            iconButton: const Icon(
              Icons.settings,
              size: 48,
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: _widgetHome(
              title: 'Settings',
              onPressed: _widgetHome,
              iconButton: const Icon(Icons.settings, size: 48)),
        ),
      ],
    );
  }

  Widget _widgetHome({
    required String title,
    // String? subTitle,
    required Function onPressed,
    required Icon iconButton,
  }) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              child: iconButton),
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 10),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          MaterialButton(
            height: 50,
            onPressed: () {
              print("Hi");
            },
            color: Colors.red,
            child: const Text(
              "GO",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

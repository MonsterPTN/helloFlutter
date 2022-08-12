import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TabBarViewWidget extends StatefulWidget {
  const TabBarViewWidget({Key? key}) : super(key: key);

  @override
  State<TabBarViewWidget> createState() => _TabBarViewWidgetState();
}

class _TabBarViewWidgetState extends State<TabBarViewWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [],
            ),
            title: const Text('Woolha.com Flutter Tutorial'),
            backgroundColor: Colors.teal,
          ),
          body: const TabBarView(
            physics: BouncingScrollPhysics(),
            dragStartBehavior: DragStartBehavior.down,
            children: [
              // Add widgets here
            ],
          ),
        ),
      ),
    );
  }
}

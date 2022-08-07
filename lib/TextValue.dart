import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

class MyApp1 extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp1> {
  final selectedIndexNotifier = ValueNotifier<int?>(null);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
            child: ValueListenableBuilder<int?>(
                valueListenable: selectedIndexNotifier,
                builder: (_, selectedIndex, __) => Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        for (int i = 1; i <= 4; i++)
                          MyWidget(
                              key: ValueKey(i),
                              text: 'Button $i',
                              isFavorite: selectedIndex == i,
                              onPressed: () => selectedIndex == i
                                  ? selectedIndexNotifier.value = null
                                  : selectedIndexNotifier.value = i)
                      ],
                    ))),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({
    Key? key,
    required this.text,
    required this.isFavorite,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: isFavorite ? Colors.red : Colors.green,
      ),
      onPressed: onPressed,
      child: Text(text));

  final String text;
  final bool isFavorite;
  final VoidCallback onPressed;
}

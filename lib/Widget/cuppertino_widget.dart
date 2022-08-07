import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoScollPicker extends StatelessWidget {
  final List<Widget> text;
  const CupertinoScollPicker({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: 100,
      alignment: Alignment.center,
      child: CupertinoPicker(
        itemExtent: 50,
        children: text,
        onSelectedItemChanged: (int i) {
          print(i);
        },
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';

class CupertinoScollPicker extends StatelessWidget {
  final List<Widget> text;
  const CupertinoScollPicker({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width / 3,
      alignment: Alignment.center,
      child: CupertinoPicker(
        itemExtent: 34,
        children: text,
        onSelectedItemChanged: (int i) {
          // ignore: avoid_print
          print(i);
        },
      ),
    );
  }
}

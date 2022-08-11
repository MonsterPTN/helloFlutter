import 'package:flutter/cupertino.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({Key? key}) : super(key: key);

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: CupertinoSwitch(
        value: _switchValue,
        onChanged: (value) {
          setState(
            () {
              _switchValue = value;
            },
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ButtonAdd extends StatelessWidget {
  final String text;
  final Function() onPressed1;
  const ButtonAdd({Key? key, required this.onPressed1, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: MaterialButton(
        onPressed: onPressed1,
        child: Container(
          color: Colors.black,
          alignment: Alignment.center,
          height: 50,
          width: MediaQuery.of(context).size.width,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}

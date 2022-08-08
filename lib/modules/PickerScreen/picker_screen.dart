import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../Widget/cuppertino_widget.dart';
import '../../Widget/picker_image.dart';
import '../ListViewScreen/listview_screen.dart';

class PickerScreen extends StatefulWidget {
  const PickerScreen({Key? key}) : super(key: key);

  @override
  State<PickerScreen> createState() => _PickerScreenState();
}

List<Widget> pickerList = [
  const Text("P"),
  const Text("C"),
  const Text("D"),
  const Text("R"),
  const Text("A"),
];
List<Widget> pickerList2 = [
  const Text("1"),
  const Text("2"),
  const Text("3"),
  const Text("4"),
  const Text("5"),
];

class _PickerScreenState extends State<PickerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            _widgetHeader(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CupertinoScollPicker(text: pickerList),
                CupertinoScollPicker(text: pickerList2),
              ],
            ),
            _widgetTextInput(),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                PickerImageWidget(),
                PickerImageWidget(),
                PickerImageWidget(),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _widgetHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Cancel",
          style: TextStyle(
              fontSize: 18, color: Colors.grey, fontWeight: FontWeight.bold),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ListViewScreen()));
          },
          child: const Text(
            "Add",
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  Widget _widgetTextInput() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Note(options)",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        SizedBox(
          height: 16,
        ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
              border: OutlineInputBorder(), labelText: "Max 32 caracters"),
        )
      ],
    );
  }
}

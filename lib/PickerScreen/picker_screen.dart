import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ui/ListViewScreen/listview_screen.dart';

import '../Widget/cuppertino_widget.dart';
import '../Widget/picker_image.dart';

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
            // const Expanded(
            //   flex: 3,
            //   child: Home(),
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const PickerImageWidget(),
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
        TextField(
          obscureText: true,
          decoration: InputDecoration(
              border: OutlineInputBorder(), labelText: "Max 32 caracters"),
        )
      ],
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  File? singleImage;
  File? singleImage2;
  File? singleImage3;
  final singlePicker = ImagePicker();
  final singlePicker2 = ImagePicker();
  final singlePicke3 = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: InkWell(
            onTap: () {
              getSingleImage();
            },
            child: singleImage == null
                ? Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey)),
                    width: 100,
                    height: 100,
                    child: const Icon(
                      CupertinoIcons.camera,
                      color: Colors.grey,
                    ),
                  )
                : Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey)),
                    width: 100,
                    height: 100,
                    child: Image.file(singleImage!)),
          ),
        ),
        Expanded(
          flex: 1,
          child: InkWell(
            onTap: () {
              getSingleImage2();
            },
            child: singleImage2 == null
                ? Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey)),
                    width: 100,
                    height: 100,
                    child: const Icon(
                      CupertinoIcons.camera,
                      color: Colors.grey,
                    ),
                  )
                : Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey)),
                    width: 100,
                    height: 100,
                    child: Image.file(singleImage2!)),
          ),
        ),
        Expanded(
          flex: 1,
          child: InkWell(
            onTap: () {
              getSingleImage3();
            },
            child: singleImage3 == null
                ? Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey)),
                    width: 100,
                    height: 100,
                    child: const Icon(
                      CupertinoIcons.camera,
                      color: Colors.grey,
                    ),
                  )
                : Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey)),
                    width: 100,
                    height: 100,
                    child: Image.file(singleImage3!)),
          ),
        ),
      ],
    );
  }

  Future getSingleImage() async {
    final pickedImage =
        await singlePicker.getImage(source: (ImageSource.gallery));
    setState(() {
      if (pickedImage != null) {
        singleImage = File(pickedImage.path);
      } else {
        print("no seclect");
      }
    });
  }

  Future getSingleImage2() async {
    final pickedImage2 =
        await singlePicker.getImage(source: (ImageSource.gallery));
    setState(() {
      if (pickedImage2 != null) {
        singleImage2 = File(pickedImage2.path);
      } else {
        print("no seclect");
      }
    });
  }

  Future getSingleImage3() async {
    final pickedImage3 =
        await singlePicker.getImage(source: (ImageSource.camera));
    setState(() {
      if (pickedImage3 != null) {
        singleImage3 = File(pickedImage3.path);
      } else {
        print("no seclect");
      }
    });
  }
}

class _widgetTextInput extends StatelessWidget {
  const _widgetTextInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Note(options)",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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

class _widgetPickeData extends StatelessWidget {
  TextStyle? _TextStyleData(BuildContext context) {
    return const TextStyle(fontWeight: FontWeight.bold);
  }

  const _widgetPickeData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 350,
          width: 100,
          alignment: Alignment.center,
          child: CupertinoPicker(
            itemExtent: 50,
            children: <Widget>[
              Text(
                'P',
                style: _TextStyleData(context),
              ),
              Text(
                'B',
                style: _TextStyleData(context),
              ),
              Text(
                'X',
                style: _TextStyleData(context),
              ),
            ],
            onSelectedItemChanged: (int i) {
              print(i);
            },
          ),
        ),
        Container(
          height: 350,
          width: 100,
          alignment: Alignment.center,
          child: CupertinoPicker(
            itemExtent: 50,
            children: <Widget>[
              Text(
                '1',
                style: _TextStyleData(context),
              ),
              Text(
                '2',
                style: _TextStyleData(context),
              ),
              Text(
                '3',
                style: _TextStyleData(context),
              ),
            ],
            onSelectedItemChanged: (int i) {
              print(i);
            },
          ),
        ),
      ],
    );
  }
}

class _widgetHeader1 extends StatelessWidget {
  const _widgetHeader1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}

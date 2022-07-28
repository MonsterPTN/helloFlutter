import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ui/listview_screen.dart';

class PickerScreen extends StatelessWidget {
  const PickerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          SizedBox(
            height: 70,
          ),
          Expanded(
            child: _widgetHeader(),
            flex: 1,
          ),
          Expanded(
            child: _widgetPickeData(),
            flex: 3,
          ),
          Expanded(
            child: _widgetTextInput(),
            flex: 3,
          ),
          Expanded(
            child: Home(),
            flex: 3,
          ),
        ]),
      ),
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
                    child: Icon(
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
          flex: 1,
        ),
        Expanded(
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
                    child: Icon(
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
          flex: 1,
        ),
        Expanded(
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
                    child: Icon(
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
          flex: 1,
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
      children: [
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

class _widgetHeader extends StatelessWidget {
  const _widgetHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
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
          child: Text(
            "Add",
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}

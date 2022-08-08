import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PickerImageWidget extends StatefulWidget {
  const PickerImageWidget({Key? key}) : super(key: key);

  @override
  State<PickerImageWidget> createState() => _PickerImageWidgetState();
}

class _PickerImageWidgetState extends State<PickerImageWidget> {
  File? singleImage;
  final singlePicker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        getSingleImage();
      },
      child: singleImage == null
          ? Container(
              decoration: BoxDecoration(
                  color: Colors.white, border: Border.all(color: Colors.grey)),
              width: 100,
              height: 100,
              child: const Icon(
                CupertinoIcons.camera,
                color: Colors.grey,
              ),
            )
          : Container(
              decoration: BoxDecoration(
                  color: Colors.white, border: Border.all(color: Colors.grey)),
              width: 100,
              height: 100,
              child: Image.file(
                singleImage!,
                fit: BoxFit.cover,
              ),
            ),
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
}

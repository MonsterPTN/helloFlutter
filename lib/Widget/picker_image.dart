import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
          ? DottedBorder(
              color: Colors.grey,
              child: SizedBox(
                  width: 108,
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(35.0),
                    child: SvgPicture.asset('assets/svg/ic_add.svg'),
                  )),
            )
          : DottedBorder(
              color: Colors.grey,
              child: SizedBox(
                width: 108,
                height: 108,
                child: Image.file(
                  singleImage!,
                  fit: BoxFit.cover,
                ),
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

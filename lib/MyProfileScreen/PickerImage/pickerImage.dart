// ignore_for_file: file_names
import 'dart:io';

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:image_picker/image_picker.dart';

class PickImage extends StatefulWidget {
  const PickImage({Key? key}) : super(key: key);

  @override
  State<PickImage> createState() => _PickImageState();
}

class _PickImageState extends State<PickImage> {
  File? singleImage;
  final singlePicker = ImagePicker();
  final singlePickerCamera = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  height: 100,
                  color: Colors.grey,
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: _widgetInkWellIcon(
                            icon: const Icon(
                              Icons.camera_alt_rounded,
                              size: 30,
                            ),
                            onTap: getSingleImageCamera),
                      ),
                      Expanded(
                        flex: 1,
                        child: _widgetInkWellIcon(
                            icon: const Icon(
                              Icons.image,
                              size: 30,
                            ),
                            onTap: getSingleImage),
                      )
                    ],
                  )),
                );
              });
        },
        child: singleImage == null
            ? _widgetImageTest(
                url:
                    'https://www.kindacode.com/wp-content/uploads/2021/01/blue.jpg')
            : _widgetImage(),
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

  Future getSingleImageCamera() async {
    final pickedImage =
        await singlePickerCamera.getImage(source: (ImageSource.camera));
    setState(() {
      if (pickedImage != null) {
        singleImage = File(pickedImage.path);
      } else {
        print("no seclect");
      }
    });
  }

  Widget _widgetImageTest({required String url}) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              url,
            )),
        borderRadius: BorderRadius.circular(50),
        color: Colors.white,
        border: Border.all(
          width: 2,
          color: Colors.white,
        ),
      ),
      height: 64,
      width: 64,
    );
  }

  Widget _widgetInkWellIcon({required Icon icon, required Function onTap}) {
    return InkWell(
      child: icon,
      onTap: () {
        onTap();
      },
    );
  }

  Widget _widgetImage() {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white,
          border: Border.all(color: Colors.white, width: 2)),
      width: 64,
      height: 64,
      child: Image.file(
        singleImage!,
        fit: BoxFit.cover,
      ),
    );
  }
}

import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.red,
      child: Column(children: [
        Expanded(
          child: Column(
            children: [
              _widgetHeader(),
              PickImage(),
              _widgetText(),
            ],
          ),
          flex: 2,
        ),
        Expanded(
          child: _widgetMain(),
          flex: 3,
        )
      ]),
    ));
  }
}

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
                      child: InkWell(
                        child: Icon(
                          Icons.camera,
                          size: 36,
                        ),
                        onTap: () {
                          getSingleImageCamera();
                        },
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          getSingleImage();
                        },
                        child: Icon(
                          Icons.image,
                          size: 36,
                        ),
                      ),
                      flex: 1,
                    )
                  ],
                )),
              );
            });
      },
      child: singleImage == null
          ? Container(child: _imageTest())
          : Container(
              // child: singleImage == null ? _imageTest() : Image.file(singleImage!),
              child: Container(
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
              ),
            ),
    ));
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
}

class _imageTest extends StatelessWidget {
  const _imageTest({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              'https://www.kindacode.com/wp-content/uploads/2021/01/blue.jpg',
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
}

class _widgetMain extends StatelessWidget {
  const _widgetMain({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
        child: Column(
          children: [
            _widgetText2(),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'First name',
                      suffixIcon: Icon(
                        Icons.border_color_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Last Name',
                      suffixIcon: Icon(
                        Icons.border_color_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      suffixIcon: Icon(
                        Icons.border_color_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Mobie number',
                      suffixIcon: Icon(
                        Icons.border_color_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _widgetText2 extends StatelessWidget {
  const _widgetText2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Personal Account Settings",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 10, bottom: 10),
          child: Divider(
            color: Colors.grey,
            height: 1,
          ),
        ),
      ],
    );
  }
}

class _widgetText extends StatelessWidget {
  const _widgetText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(children: [
        Container(
          child: Text(
            "Admam Smith",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 5),
          child: Text(
            "adamsmith@gmail.com",
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 5),
          child: Text(
            "tsr_adamsmith.cruz",
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
        ),
      ]),
    );
  }
}

class _widgetImage extends StatelessWidget {
  const _widgetImage({
    Key? key,
  }) : super(key: key);

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
                      child: Icon(
                        Icons.camera,
                        size: 36,
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () => Navigator.pop(context),
                        child: Icon(
                          Icons.image,
                          size: 36,
                        ),
                      ),
                      flex: 1,
                    )
                  ],
                )),
              );
            });
      },
      child: Container(
        margin: const EdgeInsets.only(left: 12, top: 25),
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                'https://www.kindacode.com/wp-content/uploads/2021/01/blue.jpg',
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
      ),
    ));
  }
}

class _widgetHeader extends StatelessWidget {
  const _widgetHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: Icon(
              Icons.keyboard_arrow_left,
              size: 36,
              color: Colors.white,
            ),
          ),
          Container(
            child: Text(
              "My Profile",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 20),
            width: 24,
          )
        ],
      ),
    );
  }
}

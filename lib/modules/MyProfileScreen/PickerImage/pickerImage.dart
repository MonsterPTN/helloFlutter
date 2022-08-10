// ignore_for_file: file_names
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// ignore: depend_on_referenced_packages
import 'package:image_picker/image_picker.dart';
import 'package:ui/Widget/button_add_widget.dart';
import 'package:ui/themes/app_colors.dart';
import 'package:ui/themes/style_text.dart';

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
              isScrollControlled: true,
              backgroundColor: Colors.white,
              builder: (BuildContext context) {
                return Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: SizedBox(
                      height: 394,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 25.75,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SvgPicture.asset('assets/svg/ic_close.svg'),
                              const SizedBox(
                                width: 20.75,
                              ),
                            ],
                          ),
                          const SizedBox(height: 32),
                          SvgPicture.asset('assets/svg/ic_camera.svg'),
                          const SizedBox(
                            height: 14.15,
                          ),
                          const Text(
                            'Change Profile Picture',
                            style: TextStyle(
                                fontSize: 26, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Text(
                              'Please choose a method to change your profile piture.',
                              style: StylesText.medium16Text,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          ButtonAdd(
                            onPressed1: () {
                              getSingleImageCamera();
                            },
                            text: 'TAKE PHOTO',
                            color: AppColors.primari,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          InkWell(
                            onTap: () {
                              getSingleImage();
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.black, width: 2)),
                              alignment: Alignment.center,
                              height: 48,
                              width: MediaQuery.of(context).size.width,
                              child: const Text(
                                'CHOOSE OF BIBRALY',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14),
                              ),
                            ),
                          ),
                        ],
                      )),
                );
              });
          // return Container(
          //     height: 394,
          //     child: Center(
          //         child: Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Expanded(
          //           child: _widgetInkWellIcon(
          //               icon: const Icon(
          //                 Icons.camera_alt_rounded,
          //                 size: 30,
          //               ),
          //               onTap: getSingleImageCamera),
          //         ),
          //         Expanded(
          //           flex: 1,
          //           child: _widgetInkWellIcon(
          //               icon: const Icon(
          //                 Icons.image,
          //                 size: 30,
          //               ),
          //               onTap: getSingleImage),
          //         )
          //       ],
          //     )),
          //   );
          // });
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
          ),
        ),
        borderRadius: BorderRadius.circular(50),
        color: Colors.white,
        border: Border.all(
          width: 2,
          color: Colors.white,
        ),
      ),
      height: 70,
      width: 70,
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

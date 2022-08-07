import 'package:flutter/material.dart';

class _imageTest extends StatelessWidget {
  const _imageTest({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: const DecorationImage(
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

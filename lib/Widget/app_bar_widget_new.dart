import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui/themes/app_colors.dart';

import '../themes/style_text.dart';

class NewAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Function()? onTap;
  final SvgPicture? iconRight;
  const NewAppBar({Key? key, required this.title, this.iconRight, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.backgroundApp,
      centerTitle: true,
      title: Text(
        title,
        style: StylesText.styleHeader.copyWith(
          color: AppColors.black,
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.all(12.0),
        child: InkWell(
          child: SvgPicture.asset('assets/svg/ic_arrow_left_black.svg'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: InkWell(
            onTap: onTap ?? () {},
            child: iconRight ??
                const SizedBox(
                  width: 24,
                ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}

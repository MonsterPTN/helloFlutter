import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui/themes/app_colors.dart';
import 'package:ui/themes/style_text.dart';

class AppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  final String? title;
  final Color? colorAppBar;
  final bool isShowBack;
  final Color? colorTitle;
  final Function()? onBackButtonPressed;
  final bool isShowMainAction;
  final Function()? onMainActionPress;
  const AppBarWidget(
      {Key? key,
      this.title,
      this.isShowBack = true,
      this.onBackButtonPressed,
      this.isShowMainAction = false,
      this.onMainActionPress,
      this.colorAppBar,
      this.colorTitle})
      : super(key: key);

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => AppBar().preferredSize;
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: widget.colorAppBar ?? Colors.white,
      centerTitle: true,
      elevation: 0,
      title: Text(
        widget.title ?? '',
        style: StylesText.styleHeader
            .copyWith(color: widget.colorTitle ?? Colors.black),
      ),
      leading: widget.isShowBack
          ? InkWell(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: SvgPicture.asset('assets/svg/ic_arrow_left.svg'),
              ),
              onTap: () {},
            )
          : const SizedBox(),
      actions: [
        widget.isShowMainAction
            ? InkWell(
                child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: SvgPicture.asset('assets/svg/ic_arrow_left.svg'),
              ))
            : const SizedBox(),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui/themes/style_text.dart';

class AppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  final String? title;
  final Color? colorAppBar;
  final bool isShowBack;
  final Color? colorTitle;
  final Function()? onBackButtonPressed;
  final bool isShowMainAction;
  final Function()? onMainActionPress;
  final Future? onTap;
  const AppBarWidget(
      {Key? key,
      this.title,
      this.isShowBack = true,
      this.onBackButtonPressed,
      this.isShowMainAction = true,
      this.onMainActionPress,
      this.colorAppBar,
      this.colorTitle,
      this.onTap})
      : super(key: key);

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();

  @override
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
        style: StylesText.styleHeader.copyWith(
          color: widget.colorTitle ?? Colors.black,
        ),
      ),
      leading: widget.isShowBack
          ? InkWell(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: SvgPicture.asset('assets/svg/ic_arrow_left.svg'),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            )
          : InkWell(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: SvgPicture.asset('assets/svg/ic_arrow_left_black.svg'),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
      actions: [
        widget.isShowMainAction
            ? InkWell(
                onTap: () {
                  widget.onTap;
                },
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SvgPicture.asset('assets/svg/ic_adjustment.svg'),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}

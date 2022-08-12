import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui/themes/app_colors.dart';
import 'package:ui/themes/style_text.dart';
import '../../Widget/button_add_widget.dart';
import '../../models/class.dart';
import '../PickerScreen/picker_screen.dart';

class DemoWidget extends StatefulWidget {
  const DemoWidget({Key? key}) : super(key: key);

  @override
  State<DemoWidget> createState() => _DemoWidgetState();
}

class _DemoWidgetState extends State<DemoWidget> {
  final _usernameCtl = TextEditingController();
  final _toggles = ValueNotifier<List<Class>>(
    [
      Class(false, '5'),
      Class(false, '0'),
      Class(false, '_'),
      Class(false, '4'),
      Class(false, '1 - 2'),
      Class(false, 'S/L 1'),
      Class(false, '3'),
      Class(false, '3 - 4'),
      Class(false, 'S/L 1, 2'),
      Class(false, '2'),
      Class(false, '5 - 6'),
      Class(false, 'S/L 1, 2, 3'),
      Class(false, '1'),
      Class(false, '7 & above'),
    ],
  );

  @override
  void initState() {
    _usernameCtl.text = "dddd";
    super.initState();
  }

  @override
  void dispose() {
    _usernameCtl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: SizedBox(
        height: 672,
        child: Column(
          children: [
            const SizedBox(
              height: 25.75,
            ),
            _widgetHeader(),
            const SizedBox(
              height: 44.75,
            ),
            _widgetTextHome(
                text: 'Standard of engine, systems & function',
                text2: 'C',
                text3: 'Sum Total',
                text4: 'Max'),
            const SizedBox(
              height: 12,
            ),
            _widgetListButton(),
            const SizedBox(
              height: 50,
            ),
            PrimariButton(
              text: "ADD",
              colorText: AppColors.backgroundApp,
              color: AppColors.primari,
              onPressed1: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return const PickerScreen();
                    });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _widgetHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          child: SvgPicture.asset('assets/svg/ic_close.svg'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        const SizedBox(
          width: 20.75,
        )
      ],
    );
  }

  Widget _widgetTextHome({
    required String text,
    required String text2,
    required String text3,
    required String text4,
  }) {
    return Column(
      children: [
        Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  text2,
                  style: StylesText.styleText3,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  text3,
                  style: StylesText.styleText3,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  text4,
                  style: StylesText.styleText3,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _widgetListButton() {
    return Container(
      color: AppColors.backgroundApp,
      height: 278,
      child: GridView.count(
        mainAxisSpacing: 4,
        crossAxisCount: 3,
        childAspectRatio: 2.3,
        children: [
          for (int i = 0; i < _toggles.value.length; i++)
            Container(
              margin: const EdgeInsets.only(
                top: 4,
                bottom: 4,
              ),
              child: ValueListenableBuilder<List<Class>>(
                valueListenable: _toggles,
                builder: (_, toggles, __) => SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: MaterialButton(
                    height: 46,
                    onPressed: () {
                      _toggles.value[i].id = !toggles[i].id;
                      _toggles.notifyListeners();
                    },
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color:
                            toggles[i].id == true ? Colors.black : Colors.white,
                      ),
                    ),
                    child: Text(toggles[i].nameCar),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

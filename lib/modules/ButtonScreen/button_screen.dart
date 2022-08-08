import 'package:flutter/material.dart';
import '../../Widget/button_add_widget.dart';
import '../PickerScreen/picker_screen.dart';
import '../models/class.dart';

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
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: _widgetHeader(),
          ),
          Expanded(
            flex: 1,
            child: _widgetTextHome(
                text: 'Standard of engine, systems & function',
                text2: 'C',
                text3: 'Sum Total',
                text4: 'Max'),
          ),
          Expanded(
            flex: 4,
            child: _widgetListButton(),
          ),
          Expanded(
            flex: 1,
            child: ButtonAdd(
              text: "ADD",
              onPressed1: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PickerScreen()));
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _widgetHeader() {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      alignment: Alignment.topRight,
      child: const Icon(Icons.close),
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
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          textAlign: TextAlign.center,
        ),
        Container(
          margin: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Center(
                  child: Text(
                    text2,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Center(
                  child: Text(
                    text3,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Center(
                  child: Text(
                    text4,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _widgetListButton() {
    return GridView.count(
      mainAxisSpacing: 4,
      crossAxisCount: 3,
      crossAxisSpacing: 4,
      childAspectRatio: 2,
      children: [
        for (int i = 0; i < _toggles.value.length; i++)
          SizedBox(
            child: ValueListenableBuilder<List<Class>>(
              valueListenable: _toggles,
              builder: (_, toggles, __) => SizedBox(
                width: MediaQuery.of(context).size.width,
                child: MaterialButton(
                  height: 50,
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
    );
  }

  void calculator() {}
}

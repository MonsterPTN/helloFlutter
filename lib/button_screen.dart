import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui/picker_screen.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: _widgetHeader(),
              flex: 1,
            ),
            Expanded(
              flex: 2,
              child: Text(
                "Standard of engine, systems & function",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: _widgetButton(),
              flex: 5,
            ),
            Expanded(
              child: _widgetButtonAdd(),
              flex: 2,
            )
          ],
        ),
      ),
    );
  }
}

class _widgetHeader extends StatelessWidget {
  const _widgetHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      alignment: Alignment.topRight,
      child: Icon(Icons.close),
    );
  }
}

class _widgetButtonAdd extends StatelessWidget {
  const _widgetButtonAdd({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: MaterialButton(
            height: 50,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PickerScreen()));
            },
            child: Text(
              "ADD",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.black,
          ),
        )
      ],
    );
  }
}

class _widgetButton extends StatelessWidget {
  TextStyle? _TextStyleButton(BuildContext context) {
    return const TextStyle(color: Colors.black);
  }

  const _widgetButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      "C",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      "Sum Total",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      "Max",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                  ),
                  flex: 1,
                ),
              ],
            ),
            flex: 1,
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    height: 50,
                    onPressed: () {},
                    child: Text(
                      "5",
                      style: _TextStyleButton(context),
                    ),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black)),
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: MaterialButton(
                    height: 50,
                    onPressed: () {},
                    child: Text(
                      "0",
                      style: _TextStyleButton(context),
                    ),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black)),
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: MaterialButton(
                    height: 50,
                    onPressed: () {},
                    child: Text(
                      "_",
                      style: _TextStyleButton(context),
                    ),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black)),
                  ),
                  flex: 1,
                ),
              ],
            ),
            flex: 1,
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    height: 50,
                    onPressed: () {},
                    child: Text(
                      "4",
                      style: _TextStyleButton(context),
                    ),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black)),
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: MaterialButton(
                    height: 50,
                    onPressed: () {},
                    child: Text(
                      "1 - 2",
                      style: _TextStyleButton(context),
                    ),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black)),
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: MaterialButton(
                    height: 50,
                    onPressed: () {},
                    child: Text(
                      "S/L 1",
                      style: _TextStyleButton(context),
                    ),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black)),
                  ),
                  flex: 1,
                ),
              ],
            ),
            flex: 1,
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    height: 50,
                    onPressed: () {},
                    child: Text(
                      "3",
                      style: _TextStyleButton(context),
                    ),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black)),
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: MaterialButton(
                    height: 50,
                    onPressed: () {},
                    child: Text(
                      "3 - 4",
                      style: _TextStyleButton(context),
                    ),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black)),
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: MaterialButton(
                    height: 50,
                    onPressed: () {},
                    child: Text(
                      "S/L 1, 2",
                      style: _TextStyleButton(context),
                    ),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black)),
                  ),
                  flex: 1,
                ),
              ],
            ),
            flex: 1,
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    height: 50,
                    onPressed: () {},
                    child: Text(
                      "2",
                      style: _TextStyleButton(context),
                    ),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black)),
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: MaterialButton(
                    height: 50,
                    onPressed: () {},
                    child: Text(
                      "5 - 6",
                      style: _TextStyleButton(context),
                    ),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black)),
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: MaterialButton(
                    height: 50,
                    onPressed: () {},
                    child: Text(
                      "S/L 1, 2, 3",
                      style: _TextStyleButton(context),
                    ),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black)),
                  ),
                  flex: 1,
                ),
              ],
            ),
            flex: 1,
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    height: 50,
                    onPressed: () {},
                    child: Text(
                      "1",
                      style: _TextStyleButton(context),
                    ),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black)),
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: MaterialButton(
                    height: 50,
                    onPressed: () {},
                    child: Text(
                      "7 & above",
                      style: _TextStyleButton(context),
                    ),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black)),
                  ),
                  flex: 2,
                ),
              ],
            ),
            flex: 1,
          ),
        ],
      ),
    );
  }
}

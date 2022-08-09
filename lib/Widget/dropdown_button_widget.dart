import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui/Widget/divider.dart';

class DropDownButtonWidget extends StatefulWidget {
  final List<String> items;
  const DropDownButtonWidget({Key? key, required this.items}) : super(key: key);

  @override
  State<DropDownButtonWidget> createState() => _DropDownButtonWidgetState();
}

class _DropDownButtonWidgetState extends State<DropDownButtonWidget> {
  String? dropdownValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          DropdownButton<String>(
            isExpanded: true,
            value: dropdownValue ?? widget.items.first,
            icon: const Icon(Icons.keyboard_arrow_down),
            iconSize: 42,
            underline: SizedBox(),
            onChanged: (newValue) {
              setState(() {
                dropdownValue = newValue;
              });
            },
            items: widget.items.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                ),
              );
            }).toList(),
          ),
          const DeviderWidget()
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    return Column(
      children: [
        DropdownButton<String>(
          isExpanded: true,
          hint: const Text("Please enter"),
          value: dropdownValue,
          icon: SvgPicture.asset('assets/svg/ic_arrow_bottom_16.svg'),
          iconSize: 42,
          underline: const SizedBox(),
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
    );
  }
}

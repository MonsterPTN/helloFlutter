import 'package:flutter/material.dart';

class SearchFieldWidget extends StatelessWidget {
  final String text;
  const SearchFieldWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: text,
        suffixIcon: const Icon(Icons.search),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class PricingScreen extends StatelessWidget {
  const PricingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: const [
          Expanded(
            flex: 1,
            child: _widgetHeader(),
          ),
          Expanded(
            flex: 9,
            child: _widgetBody(),
          )
        ]),
      ),
    );
  }
}

class _widgetBody extends StatelessWidget {
  const _widgetBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Brand",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                MyWidget(),
                Divider(
                  color: Colors.grey,
                  height: 2,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "VIN",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Input',
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "CS",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Input',
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Plate number",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Input',
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Model",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                DropDownMenu2(),
                const Divider(
                  color: Colors.grey,
                  height: 2,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Year Model",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Input',
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Variant",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                DropDownMenu3(),
                const Divider(
                  color: Colors.grey,
                  height: 2,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Color",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                DropDownMenu4(),
                const Divider(
                  color: Colors.grey,
                  height: 2,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Mileage",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: '10,000',
                    suffix: Text("Km"),
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              MaterialButton(
                height: 50,
                onPressed: () {},
                color: Colors.red,
                child: const Text(
                  "SUBMIT",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class DropDownMenu2 extends StatefulWidget {
  @override
  State<DropDownMenu2> createState() => _DropDownMenu2State();
}

class _DropDownMenu2State extends State<DropDownMenu2> {
  final items2 = [
    'Toyota',
    'Cammry',
    'BenZ',
    'Avendator',
  ];
  String? value2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
          isExpanded: true,
          hint: const Text("Fortuner"),
          icon: const Icon(Icons.keyboard_arrow_down),
          value: value2,
          items: items2.map(buildMenuItem).toList(),
          onChanged: (value) => setState(() => value2 = value)),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
        ),
      );
}

class DropDownMenu3 extends StatefulWidget {
  @override
  State<DropDownMenu3> createState() => _DropDownMenu3State();
}

class _DropDownMenu3State extends State<DropDownMenu3> {
  final items3 = [
    'Fortuner 4x4 Diiesel AT',
    'Fortuner 4x4 Diiesel AT',
    'Fortuner 4x4 Diiesel AT',
    'Fortuner 4x4 Diiesel AT',
  ];
  String? value3;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
          isExpanded: true,
          hint: const Text("Fortuner"),
          icon: const Icon(Icons.keyboard_arrow_down),
          value: value3,
          items: items3.map(buildMenuItem).toList(),
          onChanged: (value) => setState(() => value3 = value)),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
        ),
      );
}

class DropDownMenu4 extends StatefulWidget {
  @override
  State<DropDownMenu4> createState() => _DropDownMenu4State();
}

class _DropDownMenu4State extends State<DropDownMenu4> {
  final items4 = [
    'Black',
    'Red',
    'White',
    'Yello',
  ];
  String? value4;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
          isExpanded: true,
          hint: const Text("Fortuner"),
          icon: const Icon(Icons.keyboard_arrow_down),
          value: value4,
          items: items4.map(buildMenuItem).toList(),
          onChanged: (value) => setState(() => value4 = value)),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
        ),
      );
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final items = [
    'Toyota',
    'Lamboghini',
    'Vinfas',
    'Yamaha',
  ];
  String? value;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
          isExpanded: true,
          icon: const Icon(Icons.keyboard_arrow_down),
          hint: const Text("Toyota"),
          value: value,
          items: items.map(buildMenuItem).toList(),
          onChanged: (value) => setState(() => this.value = value)),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
        ),
      );
}

class _widgetHeader extends StatelessWidget {
  const _widgetHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      const Icon(
        Icons.chevron_left,
        size: 24,
      ),
      const Text(
        "Similar Models",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
      ),
      Container(
        width: 24,
      ),
    ]);
  }
}

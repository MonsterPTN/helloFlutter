import 'package:flutter/material.dart';
import '../../Widget/divider.dart';
import '../models/station.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            const Expanded(
              flex: 1,
              child: _widgetTextInput(),
            ),
            Expanded(
              flex: 3,
              child: MyListView(),
            )
          ],
        ),
      ),
    );
  }
}

class MyListView extends StatelessWidget {
  MyListView({Key? key}) : super(key: key);
  var station = <Station>[];

  List<Station> stations = [
    Station(1, "Open", "ELITE", "adamsmith@gmail.com", "Alejandro Manolo",
        "+65 9999 9999", "Last update July 1, 2022"),
    Station(2, "Sucessful", "ELITE", "adamsmith@gmail.com", "Alejandro Manolo",
        "+65 9999 9999", "Last update July 1, 2022"),
    Station(3, "Open", "ELITE", "adamsmith@gmail.com", "Alejandro Manolo",
        "+65 9999 9999", "Last update July 1, 2022"),
    Station(4, "Unsucessful", "ELITE", "adamsmith@gmail.com",
        "Alejandro Manolo", "+65 9999 9999", "Last update July 1, 2022"),
    Station(5, "Open", "ELITE", "adamsmith@gmail.com", "Alejandro Manolo",
        "+65 9999 9999", "Last update July 1, 2022"),
  ];
  TextStyle? _styleText1(BuildContext context) {
    return const TextStyle(fontWeight: FontWeight.bold, fontSize: 16);
  }

  @override
  Widget build(BuildContext context) {
    SingleChildScrollView(
      child: Column(),
    );
    return ListView.builder(
      itemCount: stations.length,
      itemBuilder: (context, index) {
        final item = stations[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 20, left: 10, right: 10),
          child: Column(
            children: [
              const DeviderWidget(),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Status",
                    style: _styleText1(context),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.error,
                        color: Colors.blue,
                      ),
                      Text(
                        item.status,
                      ),
                      const Icon(Icons.arrow_forward_ios),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Classification",
                    style: _styleText1(context),
                  ),
                  Text(
                    item.classification,
                    style: _styleText1(context),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Assessor",
                    style: _styleText1(context),
                  ),
                  Text(item.assessor),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Customer",
                    style: _styleText1(context),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(item.classification),
                      Text(item.numberPhoneCustomer)
                    ],
                  )
                ],
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Vehicle details",
                      style: _styleText1(context),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      item.vehicleDetail,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  State<StatefulWidget> createState() {
    throw UnimplementedError();
  }
}

class _widgetTextInput extends StatelessWidget {
  const _widgetTextInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "UCA",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  children: const [
                    Text(
                      "Appraisal list",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.black),
                    ),
                    Text("28"),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 9,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Max 32 caracters",
                          suffixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                    const Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.filter_list,
                        size: 36,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ui/themes/style_text.dart';

import '../../Widget/divider.dart';
import '../../Widget/search_field_widget.dart';
import '../models/station.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  const Text(
                    "UCA",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: const [
                      Text(
                        "Appraisal list",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.black),
                      ),
                      Text(
                        "28",
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: const [
                      Expanded(
                        flex: 9,
                        child: SearchFieldWidget(
                          text: 'Max 32 characters',
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.filter_list,
                          size: 36,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(flex: 8, child: _widgetMain())
          ],
        ),
      ),
    );
  }

  Widget _widgetMain() {
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
                  const Text(
                    "Status",
                    style: StylesText.mediumBoldText,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.error,
                        color: Colors.blue,
                      ),
                      Text(
                        item.status,
                        style: item.status == 'Open'
                            ? const TextStyle(
                                color: Colors.blue, fontWeight: FontWeight.bold)
                            : item.status == 'Sucessful'
                                ? const TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold)
                                : const TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                      ),
                      const Icon(Icons.arrow_forward_ios),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Classification",
                    style: StylesText.mediumBoldText,
                  ),
                  Text(
                    item.classification,
                    style: StylesText.mediumBoldText,
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Assessor",
                    style: StylesText.mediumBoldText,
                  ),
                  Text(item.assessor),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Customer",
                    style: StylesText.mediumBoldText,
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
              const SizedBox(
                height: 8,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text("Vehicle details", style: StylesText.medium14Text),
                        Icon(
                          Icons.arrow_circle_down,
                          size: 14,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8,
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
}

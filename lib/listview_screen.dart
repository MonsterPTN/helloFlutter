import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Expanded(
              child: _widgetTextInput(),
              flex: 1,
            ),
            Expanded(
              child: MyListView(),
              flex: 3,
            )
          ],
        ),
      ),
    );
  }
}

class Station {
  int id;
  String status;
  String classification;
  String assessor;
  String customer;
  String numberPhoneCustomer;
  String vehicleDetail;
  Station(this.id, this.status, this.classification, this.customer,
      this.assessor, this.numberPhoneCustomer, this.vehicleDetail);
}

class MyListView extends StatelessWidget {
  MyListView({Key? key}) : super(key: key);
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
    return ListView.builder(
      itemCount: stations.length,
      itemBuilder: (context, index) {
        final item = stations[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 20, left: 10, right: 10),
          child: Container(
              child: Column(
            children: [
              Divider(
                color: Colors.grey,
                height: 2,
              ),
              SizedBox(
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
                      Icon(
                        Icons.error,
                        color: Colors.blue,
                      ),
                      Text(
                        item.status,
                      ),
                      Icon(Icons.arrow_forward_ios),
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
              Container(
                child: Row(
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
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          )),
        );
      },
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "UCA",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          flex: 1,
        ),
        Expanded(
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
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
                flex: 1,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 9,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Max 32 caracters",
                          suffixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.filter_list,
                        size: 36,
                      ),
                    )
                  ],
                ),
                flex: 1,
              )
            ],
          ),
          flex: 1,
        )
      ],
    );
  }
}

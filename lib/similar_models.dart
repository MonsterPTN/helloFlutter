import 'package:flutter/material.dart';

class SimilarModels extends StatelessWidget {
  const SimilarModels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Expanded(
              flex: 1,
              child: _widgetHeader(),
            ),
            Expanded(
              flex: 9,
              child: MyListView(),
            ),
          ],
        ),
      ),
    );
  }
}

class Station {
  int id;
  String nameCar;
  String oDoCar;
  String priceCar;
  String time;
  Station(this.id, this.nameCar, this.oDoCar, this.priceCar, this.time);
}

class MyListView extends StatelessWidget {
  MyListView({Key? key}) : super(key: key);
  List<Station> stations = [
    Station(1, "2022 Toyota Fortuner", "1,200km", "810,000", "31 Aug 2022"),
    Station(2, "2022 Toyota Fortuner", "1,200km", "810,000", "31 Aug 2022"),
    Station(3, "2022 Toyota Fortuner", "1,200km", "810,000", "31 Aug 2022"),
    Station(4, "2022 Toyota Fortuner", "1,200km", "810,000", "31 Aug 2022"),
    Station(5, "2022 Toyota Fortuner", "1,200km", "810,000", "31 Aug 2022"),
    Station(6, "2022 Toyota Fortuner", "1,200km", "810,000", "31 Aug 2022"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: stations.length,
      itemBuilder: (context, index) {
        final item = stations[index];
        return Container(
            margin: const EdgeInsets.only(top: 10, bottom: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      item.nameCar,
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      item.priceCar,
                      style: const TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(item.oDoCar,
                        style: const TextStyle(color: Colors.grey)),
                    Text(item.time, style: const TextStyle(color: Colors.grey)),
                  ],
                )
              ],
            ));
      },
    );
  }
}

class _widgetHeader extends StatelessWidget {
  const _widgetHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Icon(
            Icons.chevron_left,
            size: 24,
          ),
          Text(
            "Similar Models",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          Icon(
            Icons.list_rounded,
            size: 24,
          )
        ]);
  }
}

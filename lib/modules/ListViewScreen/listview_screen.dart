import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui/Widget/app_bar_widget.dart';
import 'package:ui/themes/app_colors.dart';
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
    Station(
        1,
        "Open",
        "₽250,000",
        "ELITE",
        "adamsmith@gmail.com",
        "Alejandro Manolo",
        "+65 9999 9999",
        "Started on 08/05/2022  15:20",
        "Ended on 08/10/2022  08:01"),
    Station(
        2,
        "Sucessful",
        "₽250,000",
        "ELITE",
        "adamsmith@gmail.com",
        "Alejandro Manolo",
        "+65 9999 9999",
        "Started on 08/05/2022  15:20",
        "Ended on 08/10/2022  08:01"),
    Station(
        3,
        "Open",
        "₽250,000",
        "ELITE",
        "adamsmith@gmail.com",
        "Alejandro Manolo",
        "+65 9999 9999",
        "Started on 08/05/2022  15:20",
        "Ended on 08/10/2022  08:01"),
    Station(
        4,
        "Unsuccessful",
        "₽250,000",
        "ELITE",
        "adamsmith@gmail.com",
        "Alejandro Manolo",
        "+65 9999 9999",
        "Started on 08/05/2022  15:20",
        "Ended on 08/10/2022  08:01"),
    Station(
        5,
        "In-progress",
        "₽250,000",
        "ELITE",
        "adamsmith@gmail.com",
        "Alejandro Manolo",
        "+65 9999 9999",
        "Started on 08/05/2022  15:20",
        "Ended on 08/10/2022  08:01"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        isShowBack: true,
        title: 'Appraisal list',
      ),
      body: Container(
        color: AppColors.backgroundApp,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Column(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 33,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: SearchFieldWidget(
                            maxLength: 32,
                            text: 'Search by free text',
                            icon: SvgPicture.asset(
                              'assets/svg/ic_search.svg',
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        SvgPicture.asset('assets/svg/ic_filter.svg'),
                      ],
                    ),
                    _widgetFilterBody(),
                  ],
                ),
              ),
              Expanded(child: _widgetMain())
            ],
          ),
        ),
      ),
    );
  }

  Widget _widgetFilterBody() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _widgetFilterFormat('Number'),
        const SizedBox(
          width: 45,
        ),
        _widgetFilterFormat('Date'),
      ],
    );
  }

  Widget _widgetFilterFormat(String text) {
    return SizedBox(
      height: 42,
      child: Row(
        children: [
          Text(
            text,
            style: StylesText.mediumBoldText1,
          ),
          const SizedBox(
            width: 6,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/svg/ic_arrow_top.svg'),
              SvgPicture.asset('assets/svg/ic_arrow_bottom.svg'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _widgetMain() {
    return ListView.builder(
      itemCount: stations.length,
      itemBuilder: (context, index) {
        final item = stations[index];
        return Column(
          children: [
            const DeviderWidget(),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "TMA-TO-000000003",
                  style: StylesText.mediumBoldText,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.error,
                      color: item.status == 'Open'
                          ? AppColors.primari3
                          : item.status == 'Sucessful'
                              ? AppColors.primari2
                              : item.status == 'Unsuccessful'
                                  ? AppColors.primari
                                  : AppColors.primari4,
                    ),
                    const SizedBox(
                      width: 7.5,
                    ),
                    Text(
                      item.status,
                      style: item.status == 'Open'
                          ? TextStyle(
                              color: AppColors.primari3,
                              fontWeight: FontWeight.bold,
                            )
                          : item.status == 'Sucessful'
                              ? TextStyle(
                                  color: AppColors.primari2,
                                  fontWeight: FontWeight.bold,
                                )
                              : item.status == 'Unsuccessful'
                                  ? TextStyle(
                                      color: AppColors.primari,
                                      fontWeight: FontWeight.bold,
                                    )
                                  : TextStyle(
                                      color: AppColors.primari4,
                                      fontWeight: FontWeight.bold,
                                    ),
                    ),
                    const SizedBox(
                      width: 14.5,
                    ),
                    SvgPicture.asset('assets/svg/ic_arrow_right.svg'),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
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
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Price",
                  style: StylesText.mediumBoldText,
                ),
                Text(
                  item.price,
                  style: StylesText.medium16Text,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Assessor",
                  style: StylesText.mediumBoldText,
                ),
                Text(
                  item.assessor,
                  style: StylesText.medium16Text,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
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
                    Text(
                      item.classification,
                      style: StylesText.medium16Text,
                    ),
                    Text(
                      item.numberPhoneCustomer,
                      style: StylesText.medium16Text,
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 13,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        "Vehicle details",
                        style: StylesText.mediumBoldText,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      SvgPicture.asset('assets/svg/ic_arrow_bottom_16.svg')
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.vehicleDetailStart,
                        style: StylesText.medium14Text,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        item.vehicleDetailEnd,
                        style: StylesText.medium14Text,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

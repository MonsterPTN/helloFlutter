import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui/Widget/app_bar_widget.dart';
import 'package:ui/Widget/bottom_modal_widget_2.dart';
import 'package:ui/Widget/second_button_widget.dart';
import 'package:ui/themes/app_colors.dart';
import 'package:ui/themes/style_text.dart';

import '../../Widget/third_button_widget.dart';
import 'AppraisalTabNationWide/appraisail_tab_nation_wide_screen.dart';

class AppraisalScreen extends StatefulWidget {
  const AppraisalScreen({Key? key}) : super(key: key);

  @override
  State<AppraisalScreen> createState() => _AppraisalScreenState();
}

class _AppraisalScreenState extends State<AppraisalScreen>
    with TickerProviderStateMixin {
  List<Station> stations = [
    Station(
      1,
      "2022 Toyota Fortuner",
      "1,200km",
      "810,000",
      "31 Aug 2022",
    ),
    Station(
      2,
      "2022 Toyota Fortuner",
      "1,200km",
      "810,000",
      "31 Aug 2022",
    ),
    Station(
      3,
      "2022 Toyota Fortuner",
      "1,200km",
      "810,000",
      "31 Aug 2022",
    ),
    Station(
      4,
      "2022 Toyota Fortuner",
      "1,200km",
      "810,000",
      "31 Aug 2022",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        isShowBack: false,
        title: 'Appraisal',
      ),
      body: Container(
        color: AppColors.backgroundApp,
        child: SingleChildScrollView(
          child: Column(
            children: [
              _widgetBody(),
              const SizedBox(
                height: 35,
              ),
              _widgetTabBarView(context),
              _widgetBody2(),
              _widgetButton(),
              _widgetButtonBottom(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _widgetButtonBottom() {
    return const ThirdButtonWidget(
      text: 'THRESHOLD LIMIT',
      status: 'Open',
    );
  }

  Widget _widgetButton() {
    return Container(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 10,
        bottom: 15,
      ),
      child: SecondButtonWidget(
        text: 'THRESHOLD LIMIT',
        onPress: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (BuildContext context) {
              return const BottomModal2Widget();
            },
          );
        },
      ),
    );
  }

  Widget _widgetBody2() {
    return Container(
        color: AppColors.backgroundApp2,
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset('assets/svg/ic_car_double.svg'),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Similar models',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Text(
                  'ViewAll',
                  style: StylesText.mediumBoldText.copyWith(
                    color: AppColors.primari3,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: stations.length * 75,
              child: ListView.builder(
                itemCount: stations.length,
                itemBuilder: (context, index) {
                  final item = stations[index];
                  return Column(
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            item.nameCar,
                            style: TextStyle(
                              color: AppColors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '₱ ${item.priceCar}',
                            style: StylesText.styleText4.copyWith(
                              color: AppColors.primari,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            item.oDoCar,
                            style: TextStyle(
                              color: AppColors.primari4,
                            ),
                          ),
                          Text(
                            item.time,
                            style: TextStyle(
                              color: AppColors.primari4,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Divider()
                    ],
                  );
                },
              ),
            )
          ],
        ));
  }

  Widget _widgetTabBarView(BuildContext context) {
    TabController tabController = TabController(
      length: 2,
      vsync: this,
    );
    return Column(
      children: [
        TabBar(
          controller: tabController,
          labelColor: AppColors.black,
          indicatorColor: AppColors.black,
          indicatorWeight: 2,
          tabs: [
            Tab(
              child: Center(
                child: _widgetTab(
                  textTab: 'Nationwide',
                  sgvTab: SvgPicture.asset('assets/svg/ic_nation.svg'),
                ),
              ),
            ),
            _widgetTab(
              textTab: 'Location-based',
              sgvTab: SvgPicture.asset('assets/svg/ic_location.svg'),
            ),
          ],
        ),
        SizedBox(
          width: double.maxFinite,
          height: 629,
          child: Expanded(
            child: TabBarView(
              controller: tabController,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: AppraisailTabNationWideScreen(),
                ),
                Text('data2'),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _widgetTab({
    required String textTab,
    required SvgPicture sgvTab,
  }) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              sgvTab,
              const SizedBox(
                width: 5,
              ),
              AutoSizeText(
                textTab,
                style: StylesText.mediumBoldText,
                minFontSize: 16,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }

  Widget _widgetBody() {
    return Container(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'TMA-TO-000000003',
                style: StylesText.styleText3,
              ),
              const SizedBox(
                width: 20,
              ),
              Icon(
                Icons.error,
                color: AppColors.primari3,
              ),
              Text(
                'Open',
                style: StylesText.styleText3.copyWith(
                  color: AppColors.primari3,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SvgPicture.asset('assets/svg/ic_car.svg'),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Car overview',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Car brand',
                style: StylesText.mediumBoldText,
              ),
              Text(
                'Toyota',
                style: StylesText.medium16Text,
              )
            ],
          ),
          const Divider(),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Model',
                style: StylesText.mediumBoldText,
              ),
              Text(
                'Fortuner',
                style: StylesText.medium16Text,
              )
            ],
          ),
          const Divider(),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Car brand',
                style: StylesText.mediumBoldText,
              ),
              Text(
                'Toyota',
                style: StylesText.medium16Text,
              )
            ],
          ),
          const Divider(),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Year model',
                style: StylesText.mediumBoldText,
              ),
              Text(
                '2021',
                style: StylesText.medium16Text,
              )
            ],
          ),
          const Divider(),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Variant',
                style: StylesText.mediumBoldText,
              ),
              Text(
                'Fortuner 4X2 Diesel AT',
                style: StylesText.medium16Text,
              )
            ],
          ),
          const Divider(),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Primary color',
                style: StylesText.mediumBoldText,
              ),
              Text(
                'Expected price',
                style: StylesText.medium16Text,
              )
            ],
          ),
          const Divider(),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Expected price',
                style: StylesText.mediumBoldText,
              ),
              Text(
                '₱300,000',
                style: StylesText.medium16Text,
              )
            ],
          ),
          const Divider(),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Location',
                style: StylesText.mediumBoldText,
              ),
              Text(
                'Manila',
                style: StylesText.medium16Text,
              )
            ],
          ),
          const Divider(),
          const SizedBox(
            height: 12,
          ),
        ],
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
  Station(
    this.id,
    this.nameCar,
    this.oDoCar,
    this.priceCar,
    this.time,
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui/Widget/app_bar_widget_new.dart';
import 'package:ui/Widget/button_add_widget.dart';
import 'package:ui/Widget/slider_widget_cus.dart';
import 'package:ui/modules/SimilarModels/similar_models_none_screen.dart';

import '../../models/station1.dart';
import '../../themes/app_colors.dart';
import '../../themes/style_text.dart';

class SimilarModelsScreen extends StatefulWidget {
  const SimilarModelsScreen({Key? key}) : super(key: key);

  @override
  State<SimilarModelsScreen> createState() => _SimilarModelsScreenState();
}

class _SimilarModelsScreenState extends State<SimilarModelsScreen> {
  List<Station1> stations = [
    Station1(1, "2022 Toyota Fortuner", "1,200km", "810,000", "31 Aug 2022"),
    Station1(2, "2022 Toyota Fortuner", "1,200km", "810,000", "31 Aug 2022"),
    Station1(3, "2022 Toyota Fortuner", "1,200km", "810,000", "31 Aug 2022"),
    Station1(4, "2022 Toyota Fortuner", "1,200km", "810,000", "31 Aug 2022"),
    Station1(5, "2022 Toyota Fortuner", "1,200km", "810,000", "31 Aug 2022"),
    Station1(6, "2022 Toyota Fortuner", "1,200km", "810,000", "31 Aug 2022"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: NewAppBar(
          title: 'Similar Models',
          iconRight: SvgPicture.asset('assets/svg/ic_adjustment.svg'),
          onTap: () {
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (BuildContext context) {
                  return _widgetShowModal();
                });
          },
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
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
        ));
  }

  Widget _widgetShowModal() {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      color: AppColors.backgroundApp,
      height: 672,
      child: Column(
        children: [
          const SizedBox(
            height: 25.75,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                child: SvgPicture.asset('assets/svg/ic_close.svg'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          const SizedBox(
            height: 36.25,
          ),
          SvgPicture.asset('assets/svg/ic_adjustment.svg'),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'Filter',
            style: StylesText.styleText26,
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 304,
            child: Column(
              children: [
                Expanded(
                  child: SliderCusWidget(
                    title: 'Year model',
                    rangeMinSlider: 1990,
                    rangeMaxSlider: 2020,
                    rangeStart: 1990,
                    rangeEnd: 2020,
                  ),
                ),
                Expanded(
                  child: SliderCusWidget(
                    title: 'Price',
                    textStart: '₱',
                    textEnd: '₱',
                    rangeMinSlider: 0,
                    rangeMaxSlider: 1000,
                    rangeStart: 0,
                    rangeEnd: 1000,
                  ),
                ),
                Expanded(
                  child: SliderCusWidget(
                    title: 'Mileage',
                    textStart1: 'km',
                    textEnd1: 'km',
                    rangeMinSlider: 0,
                    rangeMaxSlider: 999,
                    rangeStart: 0,
                    rangeEnd: 999,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              InkWell(
                child: Text('Clear all',
                    style: StylesText.mediumBoldText1.copyWith(
                      decoration: TextDecoration.underline,
                    )),
              ),
              const SizedBox(
                width: 81,
              ),
              Expanded(
                  child: PrimariButton(
                text: 'APPLY',
                onPressed1: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SimilarModelsNoneScreen(),
                    ),
                  );
                },
                color: AppColors.primari,
                colorText: AppColors.backgroundApp,
              ))
            ],
          )
        ],
      ),
    );
  }
}

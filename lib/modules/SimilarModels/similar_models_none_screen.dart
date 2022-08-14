import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui/Widget/app_bar_widget_new.dart';
import '../../themes/style_text.dart';

class SimilarModelsNoneScreen extends StatefulWidget {
  const SimilarModelsNoneScreen({Key? key}) : super(key: key);

  @override
  State<SimilarModelsNoneScreen> createState() =>
      _SimilarModelsNoneScreenState();
}

class _SimilarModelsNoneScreenState extends State<SimilarModelsNoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: NewAppBar(
          title: 'Similar Models',
          iconRight: SvgPicture.asset('assets/svg/ic_adjustment.svg'),
          onTap: () {},
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/svg/ic_none.svg'),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'No Car Found!',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 94, right: 94),
                child: Text(
                  'We cannot find any model fit this filter.',
                  style: StylesText.medium16Text,
                ),
              )
            ],
          ),
        ));
  }
}

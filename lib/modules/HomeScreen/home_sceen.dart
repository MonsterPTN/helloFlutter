import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui/Widget/bottom_modal_widget.dart';
import 'package:ui/modules/PricingScreen/pricing_screen.dart';
import 'package:ui/themes/app_colors.dart';
import 'package:video_player/video_player.dart';

import '../NewAppraisal/new_appraisal.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/video.mp4')
      ..initialize().then(
        (_) {
          _controller.play();
          _controller.setLooping(true);
          _controller.setVolume(0);
          setState(() {});
        },
      );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            SizedBox.expand(
              child: FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                  width: _controller.value.size.width,
                  height: _controller.value.size.height,
                  child: VideoPlayer(_controller),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 76,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: _widgetLeftHeader(text: 'Hello, Adam Smith'),
                          ),
                          _widgetImageUrl(
                            'https://www.kindacode.com/wp-content/uploads/2021/01/blue.jpg',
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      _widgetBodyButton(),
                      const SizedBox(
                        height: 70,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _widgetLeftHeader({required String text}) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 28,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _widgetImageUrl(
    String url,
  ) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            url,
          ),
        ),
        borderRadius: BorderRadius.circular(50),
        color: Colors.white,
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      height: 50,
      width: 50,
    );
  }

  Widget _widgetBodyButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: _widgetHome(
            title: 'Appraisal',
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return BottomModalWidget(
                      svgPicture: SvgPicture.asset('assets/svg/ic_warning.svg'),
                      textHeader: 'Continue appraisal',
                      text:
                          'Leaving Recalculating process will leave Price Comparison not updated according to your updated values. Are you sure you want to leave?',
                      btn1: 'KEEP & COUNTINE',
                      btn2: 'KEEP OPEN',
                      onPressbtn1: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NewAppraisalScreen(),
                          ),
                        );
                      },
                    );
                  });
            },
            iconButton: SvgPicture.asset('assets/svg/ic_appraisal.svg'),
          ),
        ),
        Expanded(
          child: _widgetHome(
            title: 'Pricing',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PricingScreen(),
                ),
              );
            },
            iconButton: SvgPicture.asset('assets/svg/ic_pricing.svg'),
          ),
        ),
      ],
    );
  }

  Widget _widgetHome({
    required String title,
    required Function() onPressed,
    required SvgPicture iconButton,
  }) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 180,
        margin: const EdgeInsets.only(left: 10, right: 10),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 20,
            ),
            iconButton,
            const SizedBox(
              height: 12,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              height: 48,
              color: AppColors.primari,
              child: const Text(
                "GO",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui/themes/app_colors.dart';
import 'package:video_player/video_player.dart';

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
                  width: _controller.value.size?.width ?? 0,
                  height: _controller.value.size?.height ?? 0,
                  child: VideoPlayer(_controller),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 76,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: _widgetLeftHeader(text: 'Hello, Adam Smith'),
                          ),
                          Expanded(
                            flex: 2,
                            child: _widgetRightHeader(
                              url:
                                  'https://www.kindacode.com/wp-content/uploads/2021/01/blue.jpg',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  _widgetBodyButton()
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
          fontSize: 28, color: Colors.white, fontWeight: FontWeight.w600),
    );
  }

  Widget _widgetRightHeader({
    required String url,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 12),
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
          height: 48,
          width: 48,
        )
      ],
    );
  }

  Widget _widgetBodyButton() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: _widgetHome(
                title: 'Appraisal',
                onPressed: _widgetHome,
                iconButton: SvgPicture.asset('assets/svg/ic_appraisal.svg'),
              ),
            ),
            Expanded(
              flex: 1,
              child: _widgetHome(
                title: 'Pricing',
                onPressed: _widgetHome,
                iconButton: SvgPicture.asset('assets/svg/ic_pricing.svg'),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 71,
        )
      ],
    );
  }

  Widget _widgetHome({
    required String title,
    // String? subTitle,
    required Function onPressed,
    required SvgPicture iconButton,
  }) {
    return Container(
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
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
          ),
          const SizedBox(
            height: 20,
          ),
          MaterialButton(
            height: 48,
            onPressed: () {
              print("Hi");
            },
            color: AppColors.primari,
            child: const Text(
              "GO",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}

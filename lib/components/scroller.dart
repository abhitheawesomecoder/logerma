import 'package:assignment/components/indicator.dart';
import 'package:flutter/material.dart';

class Scroller extends StatefulWidget {
  const Scroller({super.key});

  @override
  State<Scroller> createState() => _Scroller();
}

class _Scroller extends State<Scroller> {
  List bannerList = [
    "lib/assets/images/slider.png",
    "lib/assets/images/slider.png",
    "lib/assets/images/slider.png"
  ];

  PageController? _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController =
        PageController(initialPage: 0, viewportFraction: 0.99, keepPage: true);
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 133,
        child: PageView.builder(
          controller: _pageController,
          onPageChanged: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          itemCount: bannerList.length,
          itemBuilder: (context, index) {
            return Container(
              height: 133,
              margin: const EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                //border: Border.all(color: Colors.grey, width: 2),
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(bannerList[index]),
                ),
              ),
              // color: _color[index],
            );
          },
        ),
      ),
      const SizedBox(height: 10),
      SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            bannerList.length,
            (index) => Indicator(
              duration: const Duration(microseconds: 5),
              isActive: currentIndex == index ? true : false,
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 20,
      )
    ]);
  }
}

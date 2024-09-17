import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:spacex/feature/onbarding/onboard_consts.dart';

class CuatomIndicator extends StatelessWidget {
  const CuatomIndicator({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      effect: const ExpandingDotsEffect(activeDotColor: Colors.yellow),
      axisDirection: Axis.horizontal,
      controller: pageController,
      count: onboardList.length,
    );
  }
}

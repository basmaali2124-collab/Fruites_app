import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MySmoothPageIndicator extends StatelessWidget {
  const MySmoothPageIndicator({
    super.key,
    required this.pageController, required this.count,
  });

  final PageController pageController;
final int count;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: count,
      effect: CustomizableEffect(
        activeDotDecoration: DotDecoration(
          width: 12,
          height: 12,
          color: Color(0xFF204F38),
          dotBorder: DotBorder(color: Color(0xFF204F38)),
          borderRadius: BorderRadius.circular(5),
        ),
        dotDecoration: DotDecoration(
          width: 10,
          height: 10,
          color: Colors.transparent,
          dotBorder: DotBorder(color: Color(0xFF204F38)),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}

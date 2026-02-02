import 'package:flutter/material.dart';
import 'package:fruits_app/welcome_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController pageController = PageController();
  bool isLast = false;
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: PageView(
            controller: pageController,
            children: [
              MyPageView(
                isLast: isLast,
                boldText: 'E shopping',
                normalText: 'Explore op organic fruits & grab them',
                pageController: pageController,
              ),
              MyPageView(
                isLast: isLast,
                boldText: 'Delivery Arrived',
                normalText: 'Order is arrived ot your place',
                pageController: pageController,
              ),
              MyPageView(
                isLast: true,
                boldText: 'Delivery Arrived',
                normalText: 'Order is arrived ot your place',
                pageController: pageController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class MyPageView extends StatelessWidget {
  const MyPageView({
    super.key,
    required this.isLast,
    required this.boldText,
    required this.normalText,
    required this.pageController,
  });

  final bool isLast;
  final PageController pageController;
  final String boldText;
  final String normalText;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.topRight,
          child: isLast
              ? Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => WelcomeScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Skip',
                        style: TextStyle(
                          color: Color(0xFF656565),
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 28,
                      child: Divider(height: 4, color: Color(0xFF656565)),
                    ),
                  ],
                )
              : SizedBox(height: 1),
        ),
        SizedBox(height: 20),
        Image.asset('assets/images/onboarding.png'),
        SizedBox(height: 16),
        Text(
          boldText,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF2F2E41),
            fontSize: 22,
          ),
        ),
        SizedBox(height: 12),
        Text(
          normalText,
          style: TextStyle(color: Color(0xFF78787C), fontSize: 17),
        ),
        SmoothPageIndicator(
          controller: pageController,
          count: 3,
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
        ),
        SizedBox(height: 40),
        SizedBox(
          width: 177,
          height: 52,
          child: ElevatedButton(
            onPressed: () {
              isLast
                  ? pageController.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    )
                  : Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => WelcomeScreen()),
                    );
            },
            child: Text(isLast ? 'Next' : 'Get Started'),
          ),
        ),
      ],
    );
  }
}

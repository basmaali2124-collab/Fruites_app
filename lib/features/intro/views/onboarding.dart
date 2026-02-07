import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/features/intro/views/welcome_screen.dart';
import 'package:fruits_app/features/intro/widgets/my_pageview.dart';
import 'package:fruits_app/features/intro/widgets/my_smooth_page_Indicator.dart';
import 'package:fruits_app/features/intro/widgets/navigation_function.dart';

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
        child: Column(
          children: [
            if (!isLast)
              Align(
                alignment: Alignment.topRight,
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        navigateTo(context, WelcomeScreen());
                      },
                      child: Text(
                        'Skip',
                        style: TextStyle(
                          color: Color(0xFF656565),
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 28,
                      child: Divider(height: 4.h, color: Color(0xFF656565)),
                    ),
                  ],
                ),
              ),
            SizedBox(height: 442.h,
              child: PageView(
                controller: pageController,
                onPageChanged: (index) {
                  setState(() {
                    isLast = index == 2;
                  });
                },
                children: [
                  MyPageView(
                    boldText: 'E shopping',
                    normalText: 'Explore op organic fruits & grab them',
                    pageController: pageController,
                  ),
                  MyPageView(
                    boldText: 'Delivery Arrived',
                    normalText: 'Order is arrived ot your place',
                    pageController: pageController,
                  ),
                  MyPageView(
                    boldText: 'Delivery Arrived',
                    normalText: 'Order is arrived ot your place',
                    pageController: pageController,
                  ),
                ],
              ),
            ),
            //SizedBox(height:48.h ,),
            MySmoothPageIndicator(pageController: pageController, count: 3,size:12),
            SizedBox(height: 84.h),
            SizedBox(
              width: 177.w,
              height: 52.h,
              child: ElevatedButton(
                onPressed: () {
                  if (!isLast) {
                    pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  } else {
                    navigateTo(context, WelcomeScreen());
                  }
                },
                child: Text(isLast ? 'Get Started' : 'Next'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

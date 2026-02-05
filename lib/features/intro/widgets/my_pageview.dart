import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/features/intro/widgets/my_smooth_page_Indicator.dart';
class MyPageView extends StatelessWidget {
  const MyPageView({
    super.key,
    required this.boldText,
    required this.normalText,
    required this.pageController,
  });
  final PageController pageController;
  final String boldText;
  final String normalText;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 20.h),
        Image.asset('assets/images/onboarding.png',height: 250.h,),
        SizedBox(height: 16.h),
        AutoSizeText(
          boldText,
         
           maxFontSize: 32,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF2F2E41),
            fontSize: 22.sp,
          ),
        ),
        SizedBox(height: 12.h),
        AutoSizeText(
         
          maxFontSize: 32,
          normalText,
          style: TextStyle(color: Color(0xFF78787C), fontSize: 16.sp),
        ),
       // SizedBox(height: 48.h),
        //Center(
        //  child: MySmoothPageIndicator(pageController: pageController, count: 3,),
        //),
      ],
    );
  }
}


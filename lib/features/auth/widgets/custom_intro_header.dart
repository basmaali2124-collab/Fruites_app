import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/Shared_widget/pop_navigator.dart';

class IntroHeader extends StatelessWidget {
  const IntroHeader({super.key, required this.header});
final String header;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const  PopNavigator(),
            SizedBox(height: 32.h),
            AutoSizeText(
              "Fruit Market",
              maxFontSize: 48,
              style: TextStyle(
                color: Color(0xFF204F38),
                fontWeight: FontWeight.bold,
                fontSize: 32.sp,
              ),
            ),
            SizedBox(height: 20.h),
             AutoSizeText(
             header,
             maxFontSize: 40,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
            ),
      ],
    );
  }
}

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/features/auth/views/login.dart';
import 'package:fruits_app/features/auth/views/signup.dart';
import 'package:fruits_app/Shared_widget/custom_two_text_type.dart';
import 'package:fruits_app/features/auth/widgets/custom_intro_header.dart';
import 'package:fruits_app/features/intro/widgets/custom_auth_botton.dart';
import 'package:fruits_app/features/intro/widgets/navigation_function.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          const  IntroHeader(header: "welcome to Our app"),
            SizedBox(height: 32.h),
            CustomAuthButton(bottonName: ' Sign up with Phone Number',icon: Icons.phone, onPressed: () { navigateTo(context,Signup());},),
            SizedBox(height: 12.h),
            CustomAuthButton(bottonName: ' Sign up with Google',icon: Icons.g_mobiledata_rounded, onPressed: () { },),
           SizedBox(height: 12.h),
           CustomAuthButton(bottonName: ' Sign up with Facebook',icon: Icons.facebook, onPressed: () { },isFacebook: true,),
            SizedBox(height: 24.h),
            Custom2TextType(normalText: 'Already member? ', buttonText: 'Sign In',onPressed: () {navigateTo(context,Login());},),
            SizedBox(height: 20.h),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'By continue you agree to our',
                    style: TextStyle(color: Color(0xFF88909C)),
                  ),
                  TextSpan(
                    text: ' Terms of service\n',
                    style: TextStyle(color: Color(0xFF004D8E)),
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                  TextSpan(
                    text: 'and our',
                    style: TextStyle(color: Color(0xFF88909C)),
                  ),
                  TextSpan(
                    text: ' Privacy Policy',
                    style: TextStyle(color: Color(0xFF004D8E)),
                    recognizer: TapGestureRecognizer()..onTap = () {navigateTo(context,Signup());},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruits_app/widgets/custom_two_text_type.dart';

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
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(onPressed: () {}, icon: Icon(Icons.close)),
            ),
            SizedBox(height: 20),
            Text(
              "Fruit Market",
              style: TextStyle(
                color: Color(0xFF204F38),
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "welcome to Our app",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 51,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.transparent,
                  side: BorderSide(color: Colors.grey.shade300),
                  backgroundColor: Colors.white,
                  foregroundColor: Color(0xFF242729),
                ),

                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.phone),
                    Text(' Sign in with Phone Number'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 12),
            SizedBox(
              height: 51,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.transparent,
                  side: BorderSide(color: Colors.grey.shade300),
                  backgroundColor: const Color.from(alpha: 1, red: 1, green: 1, blue: 1),
                  foregroundColor: Color(0xFF242729),
                ),

                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/icons/google_icon.png'),
                    Text(' Sign in with Google'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 12),
            SizedBox(
              height: 51,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF235C95),
                  foregroundColor: Colors.white,
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/icons/facebook_icon.png'),
                    Text(' Sign in with Facebook'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24),
            Custom2TextType(normalText: 'Already member? ', buttonText: 'Sign In',onPressed: () {},),

            SizedBox(height: 20),
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
                    recognizer: TapGestureRecognizer()..onTap = () {},
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


import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
            SizedBox(height: 51,
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
                    Image.asset('assets/icons/google_icon.png'),
                    Text(' Sign in with Google'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 12),
            SizedBox(height: 51,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already member?',style: TextStyle(fontSize: 18),),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      color: Color(0xFF004D8E),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('By continue you agree to our',style: TextStyle(color: Color(0xFF88909C)),),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Terms of service',
                    style: TextStyle(color: Color(0xFF004D8E)),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('and our',style: TextStyle(color: Color(0xFF88909C)),),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Privacy Policy',
                    style: TextStyle(color: Color(0xFF004D8E)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

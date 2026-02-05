import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/features/auth/views/login.dart';
import 'package:fruits_app/Shared_widget/custom_label_name.dart';
import 'package:fruits_app/Shared_widget/custom_two_text_type.dart';
import 'package:fruits_app/features/auth/widgets/custom_intro_header.dart';
import 'package:fruits_app/features/intro/widgets/navigation_function.dart';

class Signup extends StatelessWidget {
   Signup({super.key});
final TextEditingController _nameController=TextEditingController();
final TextEditingController _phoneController=TextEditingController();
final TextEditingController _passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            const IntroHeader(header:  "Sign Up to Wikala"),
              SizedBox(height: 20.h),
              const LabelName(labelName: 'Full name ',),
              SizedBox(height: 8.h),
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(hintText: 'First and Last Name'),),
                SizedBox(height: 16.h),
                const LabelName(labelName: 'Phone Number with Whatsapp ',),
              SizedBox(height: 8.h),
              TextFormField(
                controller:_phoneController,
                decoration:  InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: SizedBox(height: 40.h,
                      child: Row(
                      mainAxisSize: MainAxisSize.min,
                       
                        children: [
                          Icon(Icons.expand_more,color:Color(0xFF858D9A) ,),
                          Text('KW'),
                          VerticalDivider(color: Color(0xFFE4E4E4),)
                        ],
                      ),
                    ),
                  ),
                  hintText: 'Mobile Number'),),
                SizedBox(height: 16.h),
               const LabelName(labelName: 'Password ',),
              SizedBox(height: 8.h),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(hintText: 'Password'),
                obscureText: true,),
                SizedBox(height: 32.h,),
              SizedBox(height: 51.h,width:1.sw,child: ElevatedButton(onPressed: (){}, child: Text('Sign Up',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),))),
              Custom2TextType(normalText: "Already have an account? ", buttonText: "Login", onPressed: (){ navigateTo(context,Login());})
            ],
          ),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/app_theme.dart';
import 'package:fruits_app/features/bottonnav_screens/app_layout.dart';
import 'package:fruits_app/features/bottonnav_screens/home/models/seller_model.dart';
import 'package:fruits_app/features/bottonnav_screens/home/views/product_details.dart';
import 'package:fruits_app/features/bottonnav_screens/home/views/seller_info.dart';
import 'package:fruits_app/features/checkout/views/confirmed_checkout.dart';
import 'package:fruits_app/features/checkout/views/failed_checkout.dart';
import 'package:fruits_app/features/terms_and_conditions.dart';

void main() async{
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(430,932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context,child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: appTheme(),
          home: //SellerInfo(seller: sellers[1],));//
          AppLayout());
          //ProductDetails() );
      }
    );
  }

 
}


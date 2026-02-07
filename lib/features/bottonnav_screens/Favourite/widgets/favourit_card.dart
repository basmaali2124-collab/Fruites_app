import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/features/bottonnav_screens/home/models/product_model.dart';

class FavouritCard extends StatelessWidget {
  const FavouritCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color(0xFFECECF5),
                    width: 1.5,
                  ),
                ),
                child: CircleAvatar(
                  radius: 32,
                  backgroundColor: Colors.white,
                  child: Image.asset('assets/images/fruits.png', height: 50.h),
                ),
              ),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    "product name",
                    maxFontSize: 22,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 6),
                  Row(
                    children: [
                      Text(
                        '12.00KD',
                        style: const TextStyle(
                          color: Color(0xFF656565),
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(width: 4),
                      Text(
                        '14.00KD',
                        style: const TextStyle(
                          color: Color(0xFFD1D1D1),
                          fontSize: 14,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6),
                  AutoSizeText(
                    "Store Name:Store 1",
                    maxFontSize: 22,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12.sp,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              const Spacer(),
              Container(
                width: 26,
                height: 26,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(color: Color(0xFFD1D1D1)),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.close_rounded),
                  padding: EdgeInsets.all(0),
                  constraints: BoxConstraints(),
                  color: Color(0xFFD1D1D1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/Shared_widget/status_dot.dart';
import 'package:fruits_app/features/bottonnav_screens/home/models/product_model.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({super.key, required this.cardColor, required this.cardIcon, required this.status,});
  
final Color cardColor;
final IconData cardIcon;
final String status;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical:24,horizontal: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(width: 54,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: const Color(0xFFECECF5), width: 1.5),
                ),
                child: CircleAvatar(
                  radius: 32,
                  backgroundColor: cardColor.withAlpha(20),
                  child:Icon(cardIcon,color: cardColor,)),
              ),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    '#243288-37KD',
                    maxFontSize: 20,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.sp,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 6),
                  Row(
                    children: [
                      Text(
                        '9Sep  ',
                        style: const TextStyle(
                          color: Color(0xFF656565),
                          fontSize: 14,
                        ),
                      ), SizedBox(width: 4),
                      StatueDot(),
                      SizedBox(width: 4),
                      Text(
                        ' 4items',
                        style: const TextStyle(
                          color: Color(0xFF656565),
                          fontSize: 14,
                         ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6),
                  Row(children: [ Text(
                        'Status: ',
                        style: const TextStyle(
                          color: Color(0xFF656565),
                          fontSize: 14,
                        ),),
                         Text(
                        status,
                        style:  TextStyle(
                          color:cardColor ,
                          fontSize: 12,
                        ),)],)
                ],
              ),
              const Spacer(),
           OrderStatus(cardColor: cardColor),]),
        ),
      ),
    );
  }
}

class OrderStatus extends StatelessWidget {
  const OrderStatus({
    super.key, required this.cardColor,
  });
final Color cardColor;
  @override
  Widget build(BuildContext context) {
    return Container( padding: EdgeInsets.all(20), 
    width: 62, 
                height: 62,
                decoration: BoxDecoration(
                 shape: BoxShape.circle,
       color: cardColor, ),
      child: Center(
        child: Container(
                  width: 25, 
                  height: 25,
                  decoration: BoxDecoration(
         color: cardColor, 
         border: Border.all(
           color: Colors.white,
           width: 2,
         ),
         borderRadius: BorderRadius.circular(6), 
                  ),
                  child: const Center(
         child: Center(
           child: Icon(
             Icons.arrow_forward_ios_rounded, 
             color: Colors.white, 
             size: 12,
           ),
         ),
                  ),
                ),
      ),
    );
  }
}

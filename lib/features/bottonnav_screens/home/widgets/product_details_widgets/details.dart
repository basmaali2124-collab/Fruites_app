import 'package:flutter/material.dart';
import 'package:fruits_app/features/bottonnav_screens/home/models/product_model.dart';

class Details extends StatelessWidget {
  const Details({super.key, required this.product});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children:  [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.category,style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xFF204F38),fontSize: 16),),
                Text(
                  product.name,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),
                ),
              ],
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Price',style: TextStyle(color: Color(0xFF656565),fontSize: 14)),
             Row(
                    children: [
                      Text(
                        '${product.newPrice}.00kD',
                        style:  TextStyle(
                          color: Color(0xFF656565),
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(width: 4),
                      Text(
                        '${product.oldPrice}.00KD',
                        style:  TextStyle(
                          color: Color(0xFFDF958F),
                          fontSize: 14,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
             //  Text('KD 12.00', style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xFF656565),fontSize: 20)),
              ],
            ),
          ],
        ),
        const SizedBox(height: 12),
         Text(
        product.description, style: TextStyle(color: Color(0xFF656565),fontSize: 16),
        ),
        const SizedBox(height: 8),
        const Text(
          'Sell Per : Kartoon',
          style: TextStyle(color: Color(0xFF656565),fontSize: 16),
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}

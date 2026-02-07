import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/features/bottonnav_screens/home/models/product_model.dart';
import 'package:fruits_app/features/bottonnav_screens/home/widgets/filter_widgets/checkbox_function.dart';
import 'package:fruits_app/features/bottonnav_screens/home/widgets/product_details_widgets/details.dart';
import 'package:fruits_app/features/bottonnav_screens/home/widgets/product_details_widgets/product_appbar.dart';
import 'package:fruits_app/features/bottonnav_screens/home/widgets/product_details_widgets/show_list_field.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key, required this.product, });
  final ProductModel product;
  @override
  State<ProductDetails> createState() => _ProductDetailsState();}
class _ProductDetailsState extends State<ProductDetails> {
  String? selectedWeight;
  String? selectedAddons;

  final List<String> weights = [
    '50Gram - 4.00 KD',
    '1kg - 6.25 KD',
    '2kg - 12.00 KD',
  ];
  final List<String> addons = ['50Gram - 4.00 KD', '1kg - 6.25 KD'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProductAppbar(title: widget.product.name, product: widget.product, ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/product_name_card.png',
                width: 388.w,
                height: 232.h,
              ),
              const SizedBox(height: 12),
              Details(product: widget.product),
              ShowListField(
                selectedWeight: selectedWeight,
                fieldName: 'Select weight',
              ),
              const SizedBox(height: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: weights.map((weight) {
                  return filterCheckBox(
                    value: selectedWeight == weight,
                    name: weight,
                    onChanged: (value) {
                      setState(() {
                        selectedWeight = value! ? weight : null;
                      });
                    },
                  );
                }).toList(),
              ),
              const SizedBox(height: 12),

              ShowListField(
                selectedWeight: selectedAddons,
                fieldName: 'Select Addons',
              ),
              const SizedBox(height: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: addons.map((addon) {
                  return filterCheckBox(
                    value: selectedAddons == addon,
                    name: addon,
                    onChanged: (value) {
                      setState(() {
                        selectedAddons = value! ? addon : null;
                      });
                    },
                  );
                }).toList(),
              ),
              Align(alignment: Alignment.bottomRight,child: ElevatedButton(onPressed: (){
                   ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Product added to cart')),
                  );}, child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.shopping_basket_outlined),
                  Text('  Add to Cart'),
                ],
              )),)
            ],
          ),
        ),
      ),
    );
  }
}

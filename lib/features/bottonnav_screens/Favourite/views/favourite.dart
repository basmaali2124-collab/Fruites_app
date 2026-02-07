import 'package:flutter/material.dart';
import 'package:fruits_app/Shared_widget/custom_appbar.dart';
import 'package:fruits_app/features/bottonnav_screens/Favourite/widgets/favourit_card.dart';
import 'package:fruits_app/features/bottonnav_screens/home/models/product_model.dart';
import 'package:fruits_app/features/bottonnav_screens/home/models/seller_model.dart';
import 'package:fruits_app/features/bottonnav_screens/home/views/seller_info.dart';
import 'package:fruits_app/features/bottonnav_screens/home/widgets/custom_girdview.dart';
import 'package:fruits_app/features/bottonnav_screens/home/widgets/home_widgets/seller_card.dart';
import 'package:fruits_app/features/bottonnav_screens/home/widgets/seller_info_widgets/product_card.dart';

class Favourite extends StatelessWidget{
  const Favourite({super.key});
  
  @override
  Widget build(BuildContext context){
    return Scaffold(appBar: CustomAppBar(title: 'Favorite'),
    body: ListView.builder(itemCount: 2,itemBuilder: (BuildContext context, int index) { return FavouritCard(); },
       ),
    );}
}
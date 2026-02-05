import 'package:flutter/material.dart';
import 'package:fruits_app/features/bottonnav_screens/basket/views/basket.dart';
import 'package:fruits_app/features/bottonnav_screens/Favourite/views/favourite.dart';
import 'package:fruits_app/features/bottonnav_screens/home/views/home.dart';
import 'package:fruits_app/features/bottonnav_screens/more/views/more.dart';
import 'package:fruits_app/features/bottonnav_screens/orders/views/orders.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class AppLayout extends StatefulWidget {
  const AppLayout({super.key});
  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  List<Widget> _buildScreens() {
    return [Home(), Orders(), Basket(), Favourite(), More()];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _buildScreens(),
      backgroundColor: Color(0xFF204F38),
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
        colorBehindNavBar: Colors.white,
      ),
      navBarStyle: NavBarStyle.style7,
      items: [
        PersistentBottomNavBarItem(
          icon: Icon(Icons.home_outlined),
          title: 'Home',
          textStyle: TextStyle(fontWeight: FontWeight.bold),
          activeColorPrimary: Colors.white,
          activeColorSecondary: Color(0xFF204F38),
          inactiveColorPrimary: Colors.white,
          inactiveColorSecondary: Colors.white,
        ),
        PersistentBottomNavBarItem(icon: Icon(Icons.list_outlined),
        title: 'Orders',
          textStyle: TextStyle(fontWeight: FontWeight.bold),
          activeColorPrimary: Colors.white,
          activeColorSecondary: Color(0xFF204F38),
          inactiveColorPrimary: Colors.white,
          inactiveColorSecondary: Colors.white,),
        PersistentBottomNavBarItem(icon: Icon(Icons.shopping_bag_outlined),
        title: 'Basket',
          textStyle: TextStyle(fontWeight: FontWeight.bold),
          activeColorPrimary: Colors.white,
          activeColorSecondary: Color(0xFF204F38),
          inactiveColorPrimary: Colors.white,
          inactiveColorSecondary: Colors.white,),
        PersistentBottomNavBarItem(icon: Icon(Icons.favorite_border_outlined),
        title: 'Favourite',
          textStyle: TextStyle(fontWeight: FontWeight.bold),
          activeColorPrimary: Colors.white,
          activeColorSecondary: Color(0xFF204F38),
          inactiveColorPrimary: Colors.white,
          inactiveColorSecondary: Colors.white,),
        PersistentBottomNavBarItem(icon: Icon(Icons.more_horiz_outlined),
        title: 'More',
          textStyle: TextStyle(fontWeight: FontWeight.bold),
          activeColorPrimary: Colors.white,
          activeColorSecondary: Color(0xFF204F38),
          inactiveColorPrimary: Colors.white,
          inactiveColorSecondary: Colors.white,),
      ],
    );
  }
}

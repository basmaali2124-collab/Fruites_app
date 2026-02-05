import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/features/intro/widgets/my_smooth_page_indicator.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text(
          'Fruit Market',
          style: TextStyle(color: Color(0xFF204F38), fontSize: 24),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Image.asset('assets/icons/search_icon.png'),
          ),
          InkWell(
            onTap: () {},
            child: Image.asset('assets/icons/category_icon.png'),
          ),
        ],
      ),
    
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/home_main_card.png'),
               MySmoothPageIndicator(pageController: _pageController, count: 4),
                SizedBox(width:377.w,height:80.h ,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CategoryCard(path: 'assets/images/restorants.png',),
                      CategoryCard(path: 'assets/images/farm.png',),
                      CategoryCard(path: 'assets/images/coffee.png',),
                      CategoryCard(path: 'assets/images/pharma.png',), ],
                  ),
                ),
                Row(children: [Text('Sellers'),Spacer(),Text('Show all')],),
              //  Card(child: ListTile(leading: Container(decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white,border: Border.all(color: Color.fromARGB(248, 236, 236, 245))),child: Column(children: [Image.asset('assets/images/sellers.png'),Text('COMPANY LOGO',style: TextStyle(color: Color(0xFF48464C),fontSize: 7),)],),),),)
              ],
            ),
          ),
        
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
 const  CategoryCard({
    super.key, required this.path
  });
final String path;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.w,
      height: 80.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow:[BoxShadow(
   color: const Color(0xFF000000),
   offset: Offset.zero,
   blurRadius: 0.0,
   spreadRadius: 0.0)]
      ),
      child: Image.asset(path),
    );
  }
}

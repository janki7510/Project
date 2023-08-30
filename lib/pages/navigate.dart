import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kishan_pro/pages/home/inner_pages/fruits.dart';
import 'package:kishan_pro/pages/home/inner_pages/vegetables.dart';
import 'package:kishan_pro/pages/screen/Account_Screen.dart';
import 'package:kishan_pro/utils/colors.dart';

import 'home/food_page_body.dart';

class Navigate extends StatefulWidget {
  const Navigate({Key? key}) : super(key: key);

  @override
  State<Navigate> createState() => _NavigateState();
}

/*List<Widget>_buildScreens()=>[
  const FoodPageBody(),
  //const CartScreen(),
  //const FavouriteScreen(),
  const Account_Screen(),
];*/

class _NavigateState extends State<Navigate> {
  int _currentIndex=0;
  final List<Widget> _tabs=[
    const FoodPageBody(),
    const Fruits(),
    const Vegetables(),
    const Account_Screen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:_tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex=index;
          });

        },
        //type: BottomNavigationBarType.fixed,

        items:[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
               label:'Home',
              backgroundColor: AppColors.mainColor
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label:'Shopping',
              backgroundColor: AppColors.mainColor
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label:'favorite',
              backgroundColor: AppColors.mainColor
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label:'Account',
              backgroundColor: AppColors.mainColor
          ),
        ],


      ),

    );
  }
}

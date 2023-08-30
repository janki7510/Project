import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kishan_pro/widgets/big_text.dart';
import 'package:kishan_pro/widgets/small_text.dart';

import '../../utils/colors.dart';
import 'food_page_body.dart';



class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Column(
        children: [
          //showing the header
          Container(

            child: Container(
              margin: EdgeInsets.only(top: 70,bottom: 15),
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(

                    children: [
                      BigText(text: "Gujarat",color: AppColors.mainColor,size:30),
                     Row(
                       children: [
                         SmallText(text: "Ahmedabad",color: Colors.black54,),
                         Icon(Icons.arrow_drop_down_rounded)
                       ],
                     )
                    ],
                  ),
                  Center(
                    child: Container(
                      width: 45,
                      height: 45,
                      child: Icon(Icons.search,color: Colors.white,),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.mainColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          //showing the body
          Expanded(child: SingleChildScrollView(
            child: FoodPageBody(),
          )),
        ],
      ),
    );
  }
}



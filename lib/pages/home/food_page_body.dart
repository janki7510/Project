
//import 'dart:svg';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:kishan_pro/pages/home/inner_pages/daal_details.dart';
import 'package:kishan_pro/pages/home/inner_pages/dry_fruits_details.dart';
import 'package:kishan_pro/pages/home/inner_pages/flour_details.dart';
import 'package:kishan_pro/pages/home/inner_pages/fruits_details.dart';
import 'package:kishan_pro/widgets/app_column.dart';
import 'package:kishan_pro/widgets/big_text.dart';
import 'package:kishan_pro/widgets/icon_and_text_widget.dart';
import 'package:kishan_pro/widgets/small_text.dart';

import '../../utils/colors.dart';
import 'inner_pages/Flour.dart';
import 'inner_pages/daals.dart';
import 'inner_pages/dry_fruits.dart';
import 'inner_pages/fruits.dart';
import 'inner_pages/recommended_food_detail.dart';
import 'inner_pages/vegetables.dart';



class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue=0.0;
  double _scaleFactor=0.0;
  double _height=220;


  @override
  void initState(){
    super.initState();
    pageController.addListener(() {
      pageController.addListener(() {
        setState(() {
          _currPageValue = pageController.page!;
        });
      });
    });
  }

  List<String> imagePaths=[
    'assets/images/img0.jpg',
    'assets/images/img1.jpg',
    'assets/images/img2.jpg',
    'assets/images/img3.jpg',
    'assets/images/img4.jpg',

  ];
  var arrNames=[
    'Dals And Pulses',
    'Fresh Fruits',
    'Fresh Vegetables',
    'Fresh Atta(Flour)',
    'Dry Fruits'
  ];

  @override
  void dispose(){
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //slider section
        Container(
          //color: Colors.orange,
            height: 330,
            child: PageView.builder(
                controller: pageController,
                itemCount: 5,
                itemBuilder: (context,position){
                  return _buildPageItem(position);
                })
        ),

        //dots
        new DotsIndicator(
          dotsCount: 5,
          position: _currPageValue,
          decorator: DotsDecorator(
            activeColor: AppColors.mainColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          ),
        ),

        //Categories text
        SizedBox(height: 35,),
        Container(
          margin: EdgeInsets.only(left: 30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: 'Categories'),
              SizedBox(height: 10,),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: BigText(text: '.',color: Colors.black26,),
              ),
              SizedBox(height: 10,),
              Container(
                margin: const EdgeInsets.only(bottom: 2),
                child: SmallText(text: 'popular',),
              ),
            ],
          ),
        ),

        //list of food and images
        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: imagePaths.length,
            itemBuilder: (context,index){
              return Container(
                margin: EdgeInsets.only(left: 20,right: 20,bottom: 15,),
                child: Row(
                  children: [
                    //image section
                    Container(
                      width:100,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white38,
                             image: DecorationImage(
                              image:  AssetImage(
                                imagePaths[index],
                                // 'assets/images/img$index.jpg'
                             ),
                             ),

                      ),
                    ),
                    //text container
                    Expanded(
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(5),
                          ),
                          color: Colors.white24,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 5,right: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(onPressed: (){
                              if(index==0){
                                Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Daals()),);
                              }else if(index==1){
                                Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Fruits()),);
                              }else if(index==2){
                                Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Vegetables()),);
                              }else if(index==3){
                                Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Flour()),);
                              }else if(index==4){
                                Navigator.push(context,
                                MaterialPageRoute(builder: (context) => DryFruits()),);
                              }
                              }, child:  BigText(text: arrNames[index]),),
                              //BigText(text: arrNames[index]),

                              SizedBox(height: 12),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                 /* IconAndTextWidget(icon: Icons.circle_sharp,
                                      text: 'Normal',
                                      iconColor: AppColors.iconColor1),*/

                                  IconAndTextWidget(icon: Icons.location_on,
                                      text: '1.7km',
                                      iconColor: AppColors.mainColor),
                                  IconAndTextWidget(icon: Icons.access_time_rounded,
                                      text: '47min',
                                      iconColor: AppColors.iconColor2),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            }),

      ],
    );
  }
  Widget _buildPageItem(int index){
    Matrix4 matrix = new Matrix4.identity();
    if(index==_currPageValue.floor()){
      var currScale = 1-(_currPageValue-index)*(1-_scaleFactor);
      var currTrans=_height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1,currScale , 1)..setTranslationRaw(0,  currTrans, 0);

    }else if(index==_currPageValue.floor()+1){
      var currScale = _scaleFactor+(_currPageValue-index+1)*(1-_scaleFactor);
      var currTrans=_height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1,currScale , 1);
      matrix = Matrix4.diagonal3Values(1,currScale , 1)..setTranslationRaw(0,  currTrans, 0);

    }else if(index==_currPageValue.floor()-1){
      var currScale = 1-(_currPageValue-index)*(1-_scaleFactor);
      var currTrans=_height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1,currScale , 1);
      matrix = Matrix4.diagonal3Values(1,currScale , 1)..setTranslationRaw(0,currTrans, 0);

    }else {
      var currScale=0.8;
      matrix = Matrix4.diagonal3Values(1,currScale , 1)..setTranslationRaw(0,_height*(1-_scaleFactor)/2, 1);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [

          Container(
            height: 240,
            margin: EdgeInsets.only(left: 10,right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: index.isEven? Color(0xFF69c5df):Color(0xFFF9294cc),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                       // 'assets/images/img0.jpg'
                      imagePaths[index],
                    ),
                )
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 120,
              margin: EdgeInsets.only(left: 30,right: 20,bottom: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xFFe8e8e8),
                        blurRadius: 5.0,
                        offset: Offset(0,5)
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-5,0),
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(5,0),
                    )
                  ]
              ),
              child:   TextButton(onPressed: (){
                if(index==0){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DaalDetails()),);
                }else if(index==1){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FruitsDetails()),);
                }else if(index==2){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RecommendedFoodDetail()),);
                }else if(index==3){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FlourDetails()),);
                }else if(index==4){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DryFruitsDetails()),);
                }
              }, child:  AppColumn(text: arrNames[index],),

              //AppColumn(text: arrNames[index],),

            ),
          ),
          ),
        ],
      ),
    );
  }
}

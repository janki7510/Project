import 'package:flutter/material.dart';
import 'package:kishan_pro/widgets/big_text.dart';
import 'package:kishan_pro/widgets/expandable_text_widgets.dart';

import '../../../utils/colors.dart';
import '../../../widgets/app_icon.dart';


class DaalDetails extends StatelessWidget {
  const DaalDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon:Icons.clear),
                AppIcon(icon:Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(

                child:Center(child: BigText(size:26,text: 'Daals And Pulses',)),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5,bottom: 10),
                decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),

                  ),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/img0.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(

                    child: ExpandableTextWidgets(text: "this is all types of dals avilable herethis is all types of dals avilable herethis is all types of dals avilable herethis is all types of dals avilable herethis is all types of dals avilable herethis is all types of dals avilable here this is all types of dals avilable here this is all types of dals avilable here this is all types of dals avilable here this is all types of dals avilable here this is all types of dals avilable here this is all types of dals avilable herevthis is all types of dals avilable here this is all types of dals avilable herethis is all types of dals avilable herethis is all types of dals avilable here this is all types of dals avilable here this is all types of dals avilable here this is all types of dals avilable here this is all types of dals avilable here this is all types of dals avilable here this is all types of dals avilable herethis is all types of dals avilable herethis is all types of dals avilable herethis is all types of dals avilable herethis is all types of dals avilable herethis is all types of dals avilable herethis is all types of dals avilable here this is all types of dals avilable here this is all types of dals avilable here this is all types of dals avilable here this is all types of dals avilable here this is all types of dals avilable here this is all types of dals avilable herevthis is all types of dals avilable here this is all types of dals avilable herethis is all types of dals avilable herethis is all types of dals avilable here this is all types of dals avilable here this is all types of dals avilable here this is all types of dals avilable here this is all types of dals avilable here this is all types of dals avilable here this is all types of dals avilable here this is all types of dals avilable herethis is all types of dals avilable herethis is all types of dals avilable herethis is all types of dals avilable herethis is all types of dals avilable herethis is all types of dals avilable here this is all types of dals avilable here this is all types of dals avilable here this is all types of dals avilable here this is all types of dals avilable here this is all types of dals avilable here this is all types of dals avilable herevthis is all types of dals avilable here this is all types of dals avilable herethis is all types of dals avilable herethis is all types of dals avilable here this is all types of dals avilable here this is all types of dals avilable here this is all types of dals avilable here this is all types of dals avilable here this is all types of dals avilable here this is all types of dals avilable here", margin: EdgeInsets.only(left: 20,right: 20),),

                  ),
                ],
              )
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: 40,
                right: 40,
                top: 10,
                bottom: 10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconSize: 24,
                    iconColor:Colors.white,backgroundColor: AppColors.mainColor,icon: Icons.remove),
                BigText(text: '120'+'X'+'0',size: 26,color: AppColors.mainBlackColor,),
                AppIcon( iconSize: 24,iconColor:Colors.white,backgroundColor: AppColors.mainColor,icon: Icons.add),
              ],
            ),
          ),
          Container(
            height: 120,
            padding: EdgeInsets.only(top: 30,bottom: 30,left: 20,right: 20),
            decoration: BoxDecoration(
                color: AppColors.buttonBackgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),

                )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                    size: 27,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20),
                  child: BigText(text: "Add to cart",color: Colors.white,),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.mainColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

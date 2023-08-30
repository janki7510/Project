import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kishan_pro/utils/colors.dart';
import 'package:kishan_pro/widgets/app_column.dart';
import 'package:kishan_pro/widgets/icon_and_text_widget.dart';

class Account_Screen extends StatelessWidget {
  const Account_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:  Text("Account",
          style: TextStyle(
              color: AppColors.mainBlackColor,
          ),
        ),
      ),
      body:Column(
        children: [
          Expanded(
            child: Container(
              child: Column(
                children:  [
                  Icon(Icons.person_outline,size: 100,color: AppColors.mainColor,),
                      Text(
                        "Hello,Janki",
                        style:  TextStyle(
                          fontSize: 18,
                          color: AppColors.mainBlackColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                     Text(
                       "7435053600",
                       style:  TextStyle(
                         color: AppColors.mainBlackColor,
                     ),),
                      Text(
                        "janki4086@gmail.com",
                        style:  TextStyle(
                          color: AppColors.mainBlackColor,
                        ),
                      ),
                      SizedBox(height: 10,),
                      /*SizedBox(
                        width: 130,
                        child: ElevatedButton(
                            child: Text('Edit Profile'),
                            onPressed: () {},
                        ),
                      )*/
                    ],
                  ),

              ),
          ),


          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                children: [
                  ListTile(
                    onTap: () {},
                    leading: Icon(Icons.shopping_bag_outlined,color: AppColors.iconColor2),
                    title:Text("My Orders", style:  TextStyle(
                      color: AppColors.mainBlackColor,
                      fontSize: 18
                    ), ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Icon(Icons.favorite_outline,color: AppColors.iconColor2),
                    title:Text("Favorite", style:  TextStyle(
                      color: AppColors.mainBlackColor,
                        fontSize: 18
                    ),),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Icon(Icons.shopping_bag_outlined,color: AppColors.iconColor2),
                    title:Text("About Us", style:  TextStyle(
                      color: AppColors.mainBlackColor,
                        fontSize: 18
                    ),),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Icon(Icons.location_on_outlined,color: AppColors.iconColor2),
                    title:Text("My Address", style:  TextStyle(
                      color: AppColors.mainBlackColor,
                        fontSize: 18
                    ),),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Icon(Icons.favorite_outline,color: AppColors.iconColor2,),
                    title:Text("Support", style:  TextStyle(
                      color: AppColors.mainBlackColor,
                        fontSize: 18
                    ),),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Icon(Icons.privacy_tip_outlined,color: AppColors.iconColor2),
                    title:Text("Privacy Policy", style:  TextStyle(
                      color: AppColors.mainBlackColor,
                        fontSize: 18
                    ),),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Icon(Icons.logout_outlined,color: AppColors.iconColor2),
                    title:Text("Logout", style:  TextStyle(
                      color: AppColors.mainBlackColor,
                        fontSize: 18

                    ),),
                  ),
                ],
              ),
            ),

          )
        ],
      )
    );
  }
}

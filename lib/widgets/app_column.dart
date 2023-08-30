import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kishan_pro/widgets/small_text.dart';

import '../utils/colors.dart';
import 'big_text.dart';
import 'icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text),
        SizedBox(height: 10,),
        Row(
          children: [
            Wrap(
              children:List.generate(5, (index) {return Icon(Icons.star,color: AppColors.mainColor,);}),
            ),
            SizedBox(width: 8,),
            SmallText(text: '4.5'),
            SizedBox(width: 8,),
           // SmallText(text: '1000'),
            //SizedBox(width: 8,),
            //SmallText(text: 'comments'),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(icon: Icons.circle_sharp,
                text: 'Normal',
                iconColor: AppColors.iconColor1),

            IconAndTextWidget(icon: Icons.location_on,
                text: '1.7km',
                iconColor: AppColors.mainColor),
            IconAndTextWidget(icon: Icons.access_time_rounded,
                text: '47min',
                iconColor: AppColors.iconColor2),
          ],
        )
      ],
    );
  }
}

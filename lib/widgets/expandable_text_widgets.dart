import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kishan_pro/widgets/small_text.dart';

import '../utils/colors.dart';

class ExpandableTextWidgets extends StatefulWidget {
  final String text;
  const ExpandableTextWidgets({Key? key,required this.text, required EdgeInsets margin}) : super(key: key);

  @override
  State<ExpandableTextWidgets> createState() => _ExpandableTextWidgetsState();
}

class _ExpandableTextWidgetsState extends State<ExpandableTextWidgets> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText=true;
  double textHeight = 150;

  @override
  void initState(){
    super.initState();
    if(widget.text.length>textHeight){
      firstHalf=widget.text.substring(0,textHeight.toInt());
      secondHalf=widget.text.substring(textHeight.toInt()+1,widget.text.length);
    }else{
      firstHalf=widget.text;
      secondHalf="";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty?SmallText(color: AppColors.paraColor,size: 17,text: firstHalf):Column(
        children: [
          SmallText(height:1.8,color: AppColors.paraColor,size: 17,text: hiddenText?(firstHalf+"..."):(firstHalf+secondHalf)),
          InkWell(
            onTap: (){
               setState(() {
                 hiddenText=!hiddenText;
               });
            },
            child: Row(
              children: [
                SmallText(text: "Show more",color: AppColors.mainColor,size: 18,),
                Icon(hiddenText?Icons.arrow_drop_down:Icons.arrow_drop_up,color: AppColors.mainColor,)
              ],
            ),
          )
        ],
      ),
    );
  }
}

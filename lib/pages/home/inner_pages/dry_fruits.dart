import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/big_text.dart';

class DryFruits extends StatefulWidget {
  const DryFruits({Key? key}) : super(key: key);

  @override
  State<DryFruits> createState() => _DryFruitsState();
}

var arrName=[
  'Black Raisins',
  'Walnut/Akharot',
  'Almond/Badam',
  'Raisins',
  'Dry fib/Sukha Anjeeer',
  'Dates Red/Laal Khajur',
  'cashew/kaju',
  'Apricot/Khubani',
  'Black Raisins/Kala Kishmis',
  'Dates Black/Kake Khajur',
  'Dry Dates Yellow',
  'Dry Dates Black',
  'Green Pista',
  'Apricot Dried',
];
class _DryFruitsState extends State<DryFruits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(itemBuilder: (context,index){
          return ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage('assets/images/img4.jpg'),radius: 47,),
            title:BigText(text: arrName[index],) ,
            subtitle: Text('₹50  50gm',) ,
            trailing: Icon(Icons.add),
          );
        }, separatorBuilder: (context,index){
          return Divider(height: 20,thickness: 1,);
        }, itemCount: arrName.length  )
    );
  }
}

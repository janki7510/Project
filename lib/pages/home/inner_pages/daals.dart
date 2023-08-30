import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/big_text.dart';

class Daals extends StatefulWidget {
  const Daals({Key? key}) : super(key: key);

  @override
  State<Daals> createState() => _DaalsState();
}

var arrName=[
  'Red Lentils',
  'Aduki Beans',
  'Soup Mix',
  'Split Green Peas',
  'Kidney Beans',
  'Soyabeans',
  'Split Mixed Peas',
  'Chickpeas',
  'Split Yellow Peas',
  'Cannellini Beans',
  'Mixed Pulses',
  'Broad Beans',
  'Mung Dahl',
  'Mung Beans'
];
class _DaalsState extends State<Daals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(itemBuilder: (context,index){
          return ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage('assets/images/img0.jpg'),radius: 47,),
            title:BigText(text: arrName[index],) ,
            subtitle: Text('₹50  50gm',) ,
            trailing: Icon(Icons.add),
          );
        }, separatorBuilder: (context,index){
          return Divider(height: 20,thickness: 1,);
        }, itemCount: arrName.length  )
    );;
  }
}

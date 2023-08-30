import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kishan_pro/widgets/big_text.dart';
import 'package:kishan_pro/widgets/small_text.dart';

class Fruits extends StatefulWidget {
  const Fruits({Key? key}) : super(key: key);

  @override
  State<Fruits> createState() => _FruitsState();
}

var arrName=[  'Jamun',
  'Mango',
  'Banana',
  'Muskmelon',
  'Apple',
  'Litchi',
  'Chiku',
  'Tender Coconut',
  'Papaya',
  'Oranges',
  'Watermelon',
  'Pomegranate',
  'Amla',
  'Guava',
  'Avocado',
  'Sugarcane',
  'Green Kiwi',
  'Dragonfruit',
  'Pomegranate',
  'Pineapple',
  'Grapes',
  ];

var arrRu =[
  '200g  ₹139',
  '1kg  ₹100',
  '500g  ₹38',
  '1 Nos  ₹50',
  '1g  ₹109',
  '250g  ₹119',
  '1kg  ₹50',
  '1 Nos  ₹33',
  '1 Nos  ₹29',
  '500g  ₹169',
  '1 Nos  ₹99',
  '2 Nos  ₹119',
  '250g  ₹35',
  '500g  ₹42',
  '1 Nos  ₹79',
  '1 Nos  ₹10',
  '3 Nos  ₹129',
  '1 Nos  ₹55',
  '2 Nos  ₹119',
  '1 Nos  ₹49',
  '500g  ₹99',
];

class _FruitsState extends State<Fruits> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: ListView.separated(itemBuilder: (context,index){
          return ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage('assets/images/img1.jpg'),radius: 47,),
            title:BigText(text: arrName[index],) ,
            subtitle: Text(arrRu[index]) ,
            trailing: Icon(Icons.add),
          );
        }, separatorBuilder: (context,index){
          return Divider(height: 20,thickness: 1,);
        }, itemCount: arrName.length  )
    );
  }
}

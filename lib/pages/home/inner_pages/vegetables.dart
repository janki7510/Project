import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/big_text.dart';

class Vegetables extends StatefulWidget {
  const Vegetables({Key? key}) : super(key: key);

  @override
  State<Vegetables> createState() => _VegetablesState();
}

var arrName=['Tomato'
    ,'Potato'
    ,'Bhendi'
    ,'Cauliflower-small'
    ,'Onion'
    ,'Dudhi'
    ,'Coriander'
    ,'Palak'
    ,'Chilli Green Spicy'
    ,'Carrot'
    ,'Capsicum Green'
    ,'Cabbage'
    , 'Ginger'
    ,'Tendil'
    ,'Curry Leaves'
    ,'Beetroot'
    ,'Chilli Medium Spicy'
    ,'Mint'
    ,'Methi'
    ,'Drumstick'
    ,'Gavar'
    ,'Karela'
    ,'Sweet Corn'
    ,'Brinjil Stripes'
    ,'Garlic'
    ,'Cowpea Beans'
    , 'Sweet Potato'
    ,'Sponge Gourd'
    ,'Coconut'
    ,'Dpring Onion'
    ,'Radish(Mooil)'
    ,'Ridge Gourd(Dodaka)'
    ,'Tinda'
    ,'Cucumber'
    ,'Forest Bittergrourd'
    ,'Papdi Val'
    ,'Suran(Yam)'
    ,'Pumpkin' ];



class _VegetablesState extends State<Vegetables> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView.separated(itemBuilder: (context,index){
        return ListTile(
         leading: CircleAvatar(backgroundImage: AssetImage('assets/images/img2.jpg'),radius: 47,),
          title:BigText(text: arrName[index],) ,
          subtitle:Text('₹30  50gm') ,
          trailing: Icon(Icons.add),
        );
      }, separatorBuilder: (context,index){
        return Divider(height: 20,thickness: 1,);
      }, itemCount: arrName.length  )
    );
  }
}

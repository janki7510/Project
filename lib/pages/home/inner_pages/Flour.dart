import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/big_text.dart';

class Flour extends StatefulWidget {
  const Flour({Key? key}) : super(key: key);

  @override
  State<Flour> createState() => _FlourState();
}

var arrName=[
  'Wheat Atta',
  'Besan',
  'Rice Atta',
  'Multi Millet Bhakari Atta',
  'Jawar/Jowar Atta',
  'Bajra Atta',
  'Maida'
];
class _FlourState extends State<Flour> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: ListView.separated(itemBuilder: (context,index){
          return ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage('assets/images/img3.jpg'),radius: 47,),
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

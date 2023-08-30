import 'package:flutter/material.dart';

import 'package:kishan_pro/pages/home/food_page_body.dart';
import 'package:kishan_pro/pages/home/inner_pages/Flour.dart';
import 'package:kishan_pro/pages/home/inner_pages/daal_details.dart';
import 'package:kishan_pro/pages/home/inner_pages/daals.dart';
import 'package:kishan_pro/pages/home/inner_pages/dry_fruits.dart';
import 'package:kishan_pro/pages/home/inner_pages/fruits.dart';
import 'package:kishan_pro/pages/home/inner_pages/recommended_food_detail.dart';
import 'package:kishan_pro/pages/home/login_page.dart';


import 'package:kishan_pro/pages/home/main_page.dart';
import 'package:kishan_pro/pages/home/inner_pages/vegetables.dart';
import 'package:kishan_pro/pages/navigate.dart';
import 'package:kishan_pro/pages/screen/Account_Screen.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ), home: LoginPage()
    );
  }
}


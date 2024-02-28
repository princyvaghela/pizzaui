import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:pizzaui/welcome%20page.dart';

import 'bottambar.dart';
import 'food ui/Loginpage.dart';
import 'food ui/food hub.dart';
import 'food ui/homepage.dart';
import 'food ui/singuppage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Food(),
    );

  }
}

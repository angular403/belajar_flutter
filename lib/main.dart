import 'package:flutter/material.dart';
import 'package:latihan_week3/pages/home_page.dart';
import 'package:get/get.dart';
// import 'package:latihan_week3/study/latihangetx.dart';
void main() {
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

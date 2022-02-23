import 'package:flutter/material.dart';
import 'package:latihan_week3/pages/home_page.dart';
import 'package:get/get.dart';
import 'package:latihan_week3/study/avatar_glow.dart';
import 'package:latihan_week3/study/latihanTipeData.dart';
import 'package:latihan_week3/study/latihan_getStorage.dart';
// import 'package:latihan_week3/study/latihangetx.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      // routes: {
      //   'home_page': (context) => HomePage(),
      //   'latihan_tipe_data': (context) => LatihanTipeData(),
      //   // 'home_page': (context) => HomePage(),
      // },
      getPages: [
        GetPage(name: "/home", page: () => HomePage()),
        GetPage(name: "/latihan_tipe_data", page: () => LatihanTipeData()),
        GetPage(name: "/latihan_get_storage", page: () => LatihanGetStorage()),
        GetPage(name: "/menu", page: () => LatihanAvatarGlow()),
      ],
    );
  }
}

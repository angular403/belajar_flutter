import 'package:flutter/material.dart';
import 'dart:math' as math;

class SoalTiga extends StatelessWidget {
  const SoalTiga({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlutterLogo(),
        title: Text(
          "Soal Ketiga",
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Transform.rotate(
            angle: math.pi / 2,
            child: Center(child: FlutterLogo(size: 100,)),
          ),
          
        ],
      ),
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LatihanWarna extends StatelessWidget {
  LatihanWarna({Key? key}) : super(key: key);

  List<KotakWarna> allItems = List.generate(
    10,
    (index) => KotakWarna(
      warna: Color.fromARGB(
        255,
        200 + Random().nextInt(256),
        200 + Random().nextInt(256),
        200 + Random().nextInt(256),
      ),
      text: "Kotak ke ${index + 1}",
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Extract Widget"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: allItems,
        ),
      ),
    );
  }
}

class KotakWarna extends StatelessWidget {
  const KotakWarna({
    Key? key,
    required this.warna,
    required this.text,
  }) : super(key: key);

  final Color warna;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: warna,
      child: Center(
        child: Text(
          text,
        ),
      ),
    );
  }
}

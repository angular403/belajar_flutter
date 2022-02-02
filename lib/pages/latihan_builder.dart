import 'dart:math';

import 'package:flutter/material.dart';

class LatihanBuilder extends StatelessWidget {
  const LatihanBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Griedview"),
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
        itemBuilder: (context, index) => Container(
          color: Color.fromARGB(
            255,
            60 + Random().nextInt(151),
            60 + Random().nextInt(151),
            60 + Random().nextInt(151),
          ),
        ),
      ),
    );
  }
}

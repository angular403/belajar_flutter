import 'package:flutter/material.dart';

class LatihanListview extends StatelessWidget {
  final List<Color> myColor = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.black,
  ];

  final List<Widget> myList =
      List.generate(100, (index) => Text("${index+1}", style: TextStyle(fontSize: 20 + double.parse(index.toString())),));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Latihan Appbar",
        ),
      ),
      body: ListView(
        children: myList,
      ),
    );
  }
}

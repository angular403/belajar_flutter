import 'package:flutter/material.dart';

class SoalKeempat extends StatelessWidget {
  const SoalKeempat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlutterLogo(),
        title: Text(
          "Soal Keempat",
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 150,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.amber,
          ),
          child: Center(
              child: Text(
            "Hello",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          )),
        ),
      ),
    );
  }
}

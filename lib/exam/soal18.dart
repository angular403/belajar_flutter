import 'package:flutter/material.dart';

class Soal18 extends StatelessWidget {
  const Soal18({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: FlutterLogo(),
          title: Text("Soal Ke-18"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            ),
          ],
        ),
        body: Stack(
          children: [
            Container(
              height: 250,
              width: 250,
              color: Colors.green,
            ),
            Container(
              height: 225,
              width: 225,
              color: Colors.red,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.purple,
            ),
               Container(
              height: 175,
              width: 175,
              color: Colors.yellow[300],
            ),
               Container(
              height: 150,
              width: 150,
              color: Colors.blue[800],
            ),
          ],
        ));
  }
}

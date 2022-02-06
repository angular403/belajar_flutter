import 'package:flutter/material.dart';

class Soal14 extends StatelessWidget {
  const Soal14({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlutterLogo(),
        title: Text(
          "Soal 14",
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.blueAccent,
              child: Center(
                child: Text(
                  "Text Ke-1",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.amber,
              child: Center(
                child: Text(
                  "Text Ke-2",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blueAccent,
              child: Center(
                child: Text(
                  "Text Ke-3",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.amber,
              child: Center(
                child: Text(
                  "Text Ke-4",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blueAccent,
              child: Center(
                child: Text(
                  "Text Ke-5",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.amber,
              child: Center(
                child: Text(
                  "Text Ke-6",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blueAccent,
              child: Center(
                child: Text(
                  "Text Ke-7",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.amber,
              child: Center(
                child: Text(
                  "Text Ke-8",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

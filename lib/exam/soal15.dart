import 'package:flutter/material.dart';

class Soal15 extends StatelessWidget {
  const Soal15({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          FlutterLogo(),
        ],
        title: Text("Soal Ke-15"),
        leading: Icon(Icons.more_vert),
      ),
      body: GridView.builder(
        itemCount: 30,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, mainAxisSpacing: 20, crossAxisSpacing: 20),
        itemBuilder: (context, index) {
          if (index % 2 == 0) {
            return Container(
              width: 200,
              height: 100,
              color: Colors.blue,
              child: Center(
                child: Text(
                  "Hello",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            );
          } else {
            return Container(
              width: 200,
              height: 100,
              color: Colors.amber,
              child: Center(
                child: Text(
                  "Hello",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}

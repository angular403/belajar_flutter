import 'package:flutter/material.dart';

class SoalKetujuh extends StatelessWidget {
  const SoalKetujuh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlutterLogo(),
        title: Text(
          "Soal Ketujuh",
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          // SizedBox(width: 20,),
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
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Soal12 extends StatelessWidget {
  const Soal12({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlutterLogo(),
        title: Text(
          "Soal 12",
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
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
              SizedBox(
                width: 20,
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
            ],
          ),
          SizedBox(
            height: 20,
          ),

          Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.amber,
                child: Center(
                  child: Text(
                    "Text Ke-3",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
              SizedBox(width: 20,),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    "Text Ke-4",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

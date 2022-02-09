import 'package:flutter/material.dart';

class Soal20 extends StatelessWidget {
  const Soal20({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlutterLogo(),
        title: Text("Soal Ke-20"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Center(
        child: Container(
          width: 250,
          height: 250,
          decoration: BoxDecoration(
            border: Border.all(width: 10, color: Color(0xff0D47A1)),
            color: Colors.grey,
            borderRadius: BorderRadius.circular(250 / 2),
            
            image: DecorationImage(
            fit: BoxFit.cover,
              image: NetworkImage("https://picsum.photos/500/500"),
            ),
          ),
        ),
      ),
    );
  }
}

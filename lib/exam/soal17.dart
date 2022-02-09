import 'package:flutter/material.dart';

class Soal17 extends StatelessWidget {
  const Soal17({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlutterLogo(),
        title: Text("Soal Ke-17"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(20),
        itemCount: 30,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 25),
          child: Container(
            padding: EdgeInsets.all(20),
            alignment: Alignment.bottomLeft,
            height: 200,
            decoration: BoxDecoration(
              borderRadius:  BorderRadius.circular(17),
              color: Colors.grey[300],
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage("https://picsum.photos/id/${7 + index}/200/300"),
              ),
            ),
            child: Text(
              "Hello",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}

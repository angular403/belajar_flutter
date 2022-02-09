import 'package:flutter/material.dart';

class Soal21 extends StatelessWidget {
  const Soal21({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlutterLogo(),
        title: Text("Soal Ke-21"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                ClipOval(
                  child: Container(
                    width: 268,
                    height: 268,
                    color: Color(0xff0D47A1),
                  ),
                ),
                Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                    border: Border.all(width: 5, color: Colors.white),
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(250 / 2),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://picsum.photos/500/500"),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "HELLO WORLD",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

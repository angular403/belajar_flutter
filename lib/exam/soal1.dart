import 'package:flutter/material.dart';

class SoalSatu extends StatelessWidget {
  const SoalSatu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlutterLogo(),
        title: Text(
          "Soal Pertama",
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Hello World",
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}

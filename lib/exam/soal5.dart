import 'package:flutter/material.dart';

class SoalKelima extends StatelessWidget {
  const SoalKelima({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlutterLogo(),
        title: Text(
          "Soal Kelima",
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
          width: 210,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Center(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  
                  Padding(
                    padding: const EdgeInsets.only(top: 110, right: 120),
                    child: Text(
                      "Hello Exam",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Soal22 extends StatelessWidget {
  const Soal22({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlutterLogo(),
        title: Text("Soal Ke-22"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, bottom: 20),
            child: Container(
              height: 80,
              // color: Colors.green,
              child: ListView.builder(scrollDirection: Axis.horizontal, itemCount: 10, itemBuilder: (context, index) {

                if(index % 2 == 0)
                {
                return Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  margin: EdgeInsets.only(right: 20),
                );
                }else{
             return Container(
                  width: 100,
                  height: 100,
                  color: Colors.amber,
                  margin: EdgeInsets.only(right: 20),
                );
                }
   
              }),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(20),
              itemCount: 30,
              itemBuilder: (context, index) {
                if (index % 2 == 0) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "HELLO ${index + 1}",
                              style: TextStyle(
                                  fontSize: 20,
                                  // color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                } else {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          color: Colors.amber,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "HELLO ${index + 1}",
                              style: TextStyle(
                                  fontSize: 20,
                                  // color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

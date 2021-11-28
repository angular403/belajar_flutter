import 'package:flutter/material.dart';
import 'package:latihan_week3/pages/latihan_extract.dart';
import 'package:latihan_week3/pages/latihan_listile.dart';
import 'package:latihan_week3/pages/latihan_listview.dart';
import 'package:latihan_week3/pages/ui_instagram.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => Instagram(),
                  ),
                );
              },
              child: Text(
                "Latihan 1",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => LatihanListview(),
                  ),
                );
              },
              child: Text(
                "Latihan Listview",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => LatihanListile(),
                  ),
                );
              },
              child: Text(
                "Latihan Listile",
              ),
            ),
                     ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => LatihanExtract(),
                  ),
                );
              },
              child: Text(
                "Latihan Extract Widget",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

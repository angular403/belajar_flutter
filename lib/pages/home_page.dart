import 'package:flutter/material.dart';
import 'package:latihan_week3/belajar_api/latihan_api_delete.dart';
import 'package:latihan_week3/belajar_api/latihan_api_post.dart';
import 'package:latihan_week3/belajar_api/latihan_future_builder.dart';
// import 'package:latihan_week3/exam/soal1.dart';
// import 'package:latihan_week3/exam/soal10.dart';
// import 'package:latihan_week3/exam/soal11.dart';
// import 'package:latihan_week3/exam/soal12.dart';
// import 'package:latihan_week3/exam/soal13.dart';
// import 'package:latihan_week3/exam/soal14.dart';
// import 'package:latihan_week3/exam/soal15.dart';
// import 'package:latihan_week3/exam/soal16.dart';
// import 'package:latihan_week3/exam/soal17.dart';
// import 'package:latihan_week3/exam/soal18.dart';
// import 'package:latihan_week3/exam/soal19.dart';
// import 'package:latihan_week3/exam/soal20.dart';
// import 'package:latihan_week3/exam/soal21.dart';
import 'package:latihan_week3/exam/soal22.dart';
import 'package:latihan_week3/pages/extract_widget.dart';
import 'package:latihan_week3/belajar_api/latihan_api_get.dart';
// import 'package:latihan_week3/exam/soal2.dart';
// import 'package:latihan_week3/exam/soal3.dart';
// import 'package:latihan_week3/exam/soal4.dart';
// import 'package:latihan_week3/exam/soal5.dart';
// import 'package:latihan_week3/exam/soal6.dart';
// import 'package:latihan_week3/exam/soal7.dart';
// import 'package:latihan_week3/exam/soal8.dart';
// import 'package:latihan_week3/exam/soal9.dart';
// import 'package:latihan_week3/pages/extract_widget.dart';
import 'package:latihan_week3/pages/latihan_builder.dart';
// import 'package:latihan_week3/pages/latihan_extract.dart';
import 'package:latihan_week3/pages/latihan_listile.dart';
import 'package:latihan_week3/pages/latihan_listview.dart';
import 'package:latihan_week3/pages/ui_instagram.dart';
import 'package:latihan_week3/study/barTab.dart';
import 'package:latihan_week3/study/bottomBar.dart';
import 'package:latihan_week3/study/draweer.dart';
// import 'package:latihan_week3/study/dialog.dart';
import 'package:latihan_week3/study/form.dart';
import 'package:latihan_week3/study/sheetBottom.dart';
// import 'package:latihan_week3/study/snack.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
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
                      builder: (context) => LatihanWarna(),
                    ),
                  );
                },
                child: Text(
                  "Latihan Extract Widget",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => LatihanBuilder(),
                    ),
                  );
                },
                child: Text(
                  "Latihan Builder ",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => Soal22(),
                    ),
                  );
                },
                child: Text(
                  "Exam Bootcamp",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => Drawers(),
                    ),
                  );
                },
                child: Text(
                  "Study",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => Instagram(),
                    ),
                  );
                },
                child: Text(
                  "Latihan Instagram",
                ),
              ),
                          ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => LatihanFutureBuilder(),
                    ),
                  );
                },
                child: Text(
                  "Belajar Api",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

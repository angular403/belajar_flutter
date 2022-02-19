import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:latihan_week3/models/summary_model.dart';

// ignore: must_be_immutable
class AplikasiCovid extends StatelessWidget {
  AplikasiCovid({Key? key}) : super(key: key);

  late SummaryModel dataSummary;

  Future getSummary() async {
    var response = await http.get(Uri.parse("https://covid19.mathdro.id/api"));
    var data = jsonDecode(response.body) as Map<String, dynamic>;
    dataSummary = SummaryModel.fromJson(data);
    print(dataSummary);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aplikasi Covid-19"),
      ),
      body: FutureBuilder(
          future: getSummary(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(
                  color: Colors.red[900],
                ),
              );
            } else {
              return Column(
                children: [
                  SummaryItem(
                    title: "CONFIRMED : ",
                    value: "${dataSummary.confirmed.value}",
                  ),
                  SummaryItem(
                    title: "DEATHS : ",
                    value: "${dataSummary.deaths.value}",
                  ),
                ],
              );
            }
          }),
    );
  }
}

// ignore: must_be_immutable
class SummaryItem extends StatelessWidget {
  SummaryItem({Key? key, required this.title, required this.value})
      : super(key: key);

  String title;
  String value;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.all(20),
      child: Container(
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.green,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Text(
              value,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

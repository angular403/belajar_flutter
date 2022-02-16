import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class LatihanApiPut extends StatefulWidget {
  LatihanApiPut({Key? key}) : super(key: key);

  @override
  State<LatihanApiPut> createState() => _LatihanApiPutState();
}

class _LatihanApiPutState extends State<LatihanApiPut> {
  TextEditingController nameC = TextEditingController();
  TextEditingController jobC = TextEditingController();

  String hasilResponse = "Belum Ada Data Pengguna";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Latihan Api Put")),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            controller: nameC,
            autocorrect: false,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Name",
                hintText: "Your Name"),
          ),
          SizedBox(height: 20),
          TextField(
            controller: jobC,
            autocorrect: false,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Job",
                hintText: "Your Job"),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () async {
              var response = await http.put(
                  Uri.parse("https://reqres.in/api/users/3"),
                  body: {"name": nameC.text, "job": jobC.text});
              var data = jsonDecode(response.body) as Map<String, dynamic>;
              setState(() {
                hasilResponse = "${data["name"]} - ${data["job"]}";
              });
            },
            child: Text("Get Put Users", style: TextStyle(fontSize: 20)),
            style: ElevatedButton.styleFrom(
                primary: Colors.red[900],
                fixedSize: Size(200, 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50))),
          ),
          SizedBox(height: 50),
          Divider(color: Colors.black),
          Text(hasilResponse),
        ],
      ),
    );
  }
}

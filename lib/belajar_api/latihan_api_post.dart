import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class LatihanPost extends StatefulWidget {
  LatihanPost({Key? key}) : super(key: key);

  @override
  State<LatihanPost> createState() => _LatihanPostState();
}

class _LatihanPostState extends State<LatihanPost> {
  TextEditingController nameC = TextEditingController();
  TextEditingController jobC = TextEditingController();

  String hasilResponse = "data belum ada";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Post"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            controller: nameC,
            autocorrect: false,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Name",
              hintText: "Your Name...",
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: jobC,
            autocorrect: false,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Job",
              hintText: "Your Job...",
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () async {
              var myrespons = await http.post(
                  Uri.parse("https://reqres.in/api/users"),
                  body: {"name": nameC.text, "job": jobC.text});

              var data = jsonDecode(myrespons.body) as Map<String, dynamic>;
              setState(() {
                hasilResponse = "${data["name"]} - ${data["job"]}";
              });
            },
            child: Text(
              "Get Data User",
              style: TextStyle(fontSize: 20),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.red[900],
              fixedSize: Size(100, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Divider(
            color: Colors.black,
          ),
          Text(hasilResponse),
        ],
      ),
    );
  }
}

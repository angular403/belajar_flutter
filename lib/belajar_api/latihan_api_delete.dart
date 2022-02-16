import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LatihanApiDelete extends StatefulWidget {
  LatihanApiDelete({Key? key}) : super(key: key);

  @override
  State<LatihanApiDelete> createState() => _LatihanApiDeleteState();
}

class _LatihanApiDeleteState extends State<LatihanApiDelete> {
  String hasilResponse = "Belum ada data";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Api Delete"),
        actions: [
          IconButton(
              onPressed: () async {
                var myBody =
                    await http.get(Uri.parse("https://reqres.in/api/users/2"));
                var data = jsonDecode(myBody.body) as Map<String, dynamic>;
                setState(() {
                  if (myBody.statusCode == 200) {
                    hasilResponse = "${data["data"]["first_name"]}";
                  }
                });
              },
              icon: Icon(Icons.download)),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(30),
        children: [
          Text(hasilResponse),
          SizedBox(height: 30),
          ElevatedButton(
              onPressed: () async {
                var myBody = await http
                    .delete(Uri.parse("https://reqres.in/api/users/2"));
                // var data = jsonDecode(myBody.body) as Map<String, dynamic>;
                setState(() {
                  if (myBody.statusCode == 204) {
                    hasilResponse = "data berhasil dihapus";
                  }
                });
              },
              child: Text("DELETE")),
        ],
      ),
    );
  }
}

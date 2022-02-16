import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LatihanApiGet extends StatefulWidget {
  LatihanApiGet({Key? key}) : super(key: key);

  @override
  State<LatihanApiGet> createState() => _LatihanApiGetState();
}

class _LatihanApiGetState extends State<LatihanApiGet> {
  late String id;
  late String name;
  late String email;

  @override
  void initState() {
    id = "";
    name = "";
    email = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Api Get"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("ID : $id ", style: TextStyle(fontSize: 18)),
            Text("Name : $name ", style: TextStyle(fontSize: 18)),
            Text("Email : $email ", style: TextStyle(fontSize: 18)),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () async {
                var response =
                    await http.get(Uri.parse("https://reqres.in/api/users/2"));
                if (response.statusCode == 200) {
                  var data = jsonDecode(response.body) as Map<String, dynamic>;
                  setState(() {
                    id = "${data["data"]["id"]}";
                    name =
                        "${data["data"]["first_name"]} - ${data["data"]["last_name"]}";
                    email = "${data["data"]["email"]}";
                  });
                } else {
                  print("Error ${response.statusCode}");
                }
              },
              child: Text(
                "Get Api",
                style: TextStyle(fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  fixedSize: Size(250, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
            ),
          ],
        ),
      ),
    );
  }
}

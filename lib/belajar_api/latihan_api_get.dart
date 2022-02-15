import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class LatihanApi extends StatefulWidget {
  const LatihanApi({Key? key}) : super(key: key);

  @override
  _LatihanApiState createState() => _LatihanApiState();
}

class _LatihanApiState extends State<LatihanApi> {
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
        title: Text("Belajar Api Get"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "ID : $id",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Name : $name",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Email : $email",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () async {
                var response =
                    await http.get(Uri.parse("https://reqres.in/api/users/4"));
                if (response.statusCode == 200) {
                  var data = jsonDecode(response.body) as Map<String, dynamic>;
             setState(() {
                    id = data["data"]["id"].toString();
                  name =
                      "${data["data"]["first_name"]} ${data["data"]["last_name"]}";
                  email = data["data"]["email"].toString();
             });
                } else {
                  print("ERROR ${response.statusCode}");
                }
              },
              child: Text(
                "Get API",
                style: TextStyle(fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.red[900],
                fixedSize: Size(300, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

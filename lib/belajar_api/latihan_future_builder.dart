import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:latihan_week3/models/user.dart';

// ignore: must_be_immutable
class LatihanFutureBuilder extends StatelessWidget {
  // const LatihanFutureBuilder({Key? key}) : super(key: key);

  List<UserModel> allUser = [];

  Future getAllUser() async {
    var response = await http.get(Uri.parse("https://reqres.in/api/users"));
    List data = (jsonDecode(response.body) as Map<String, dynamic>)['data'];
    data.forEach((element) {
      allUser.add(
        UserModel.fromJson(element),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Future Builder"),
      ),
      body: FutureBuilder(
          future: getAllUser(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(
                  color: Colors.green,
                ),
              );
            } else {
              return ListView.builder(
                itemCount: allUser.length,
                itemBuilder: (context, index) => ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage("${allUser[index].avatar}"),
                  ),
                  title: Text("${allUser[index].firstName}} ${allUser[index].lastName}"),
                  subtitle: Text("${allUser[index].email}"),
                ),
              );
            }
          }),
    );
  }
}

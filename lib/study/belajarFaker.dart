import 'package:flutter/material.dart';

import 'package:faker/faker.dart';

// ignore: must_be_immutable
class BelajarFaker extends StatelessWidget {
  // const BelajarFaker({Key? key}) : super(key: key);
 
 var faker = new Faker();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Faker"),
      ),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey[300],
            backgroundImage: NetworkImage("https://picsum.photos/id/${870+index}/200/300"),
          ),
          title: Text("${faker.internet.userName()} "),
          subtitle: Text("${faker.internet.email()}"),
        ),
      ),
    );
  }
}

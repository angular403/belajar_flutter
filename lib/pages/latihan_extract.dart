import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

class LatihanExtract extends StatelessWidget {
  var faker = new Faker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Latihan Extract Widget",
          ),
        ),
        body: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return Chatitem(
                  imageUrl: "https://picsum.photos/id/$index/200/300",
                  title: faker.person.name(),
                  subTitle: faker.lorem.sentence());
            }));
  }
}

class Chatitem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subTitle;

  Chatitem(
      {required this.imageUrl, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(title),
      subtitle: Text(subTitle),
      trailing: Text("03-00 AM"),
    );
  }
}

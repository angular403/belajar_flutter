import 'package:flutter/material.dart';

import 'package:faker/faker.dart';
import 'package:intl/intl.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

// ignore: must_be_immutable
class BelajarFaker extends StatefulWidget {
  // const BelajarFaker({Key? key}) : super(key: key);

  @override
  _BelajarFakerState createState() => _BelajarFakerState();
}

class _BelajarFakerState extends State<BelajarFaker> {
  var faker = new Faker();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> Widgets = [
      ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey[300],
            backgroundImage:
                NetworkImage("https://picsum.photos/id/${870 + index}/200/300"),
          ),
          title: Text("${faker.internet.userName()} "),
          subtitle:
              Text("${DateFormat.yMMMMd().add_jms().format(DateTime.now())}"),
        ),
      ),
      Center(
        child: Text("MENU KE 2"),
      ),
      Center(
        child: Text("MENU KE 3"),
      ),
      Center(
        child: Text("MENU KE 4"),
      ),
      Center(
        child: Text("MENU KE 5"),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Faker"),
      ),
      body: Widgets[currentIndex],
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.red[900],
          items: [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.map, title: 'Discovery'),
            TabItem(icon: Icons.add, title: 'Add'),
            TabItem(icon: Icons.message, title: 'Message'),
            TabItem(icon: Icons.people, title: 'Profile'),
          ],
          initialActiveIndex: 0,
          onTap: (int i) {
            setState(() {
              currentIndex = i;
            });
          }),
    );
  }
}

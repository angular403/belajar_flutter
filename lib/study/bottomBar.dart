import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  late int index;

  List showWidget = [
    Center(
      child: Text("Home"),
    ),
    Center(
      child: Text("Shop"),
    ),
    Center(
      child: Text("Profile"),
    ),
  ];

  @override
  void initState() {
    index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan BottomBar"),
      ),
      body: showWidget[index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber,
        selectedItemColor: Colors.white,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Shop",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_search),
            label: "Person",
          ),
        ],
      ),
    );
  }
}

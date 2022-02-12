import 'package:flutter/material.dart';

class BarTab extends StatefulWidget {
  BarTab({Key? key}) : super(key: key);

  @override
  State<BarTab> createState() => _BarTabState();
}

class _BarTabState extends State<BarTab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text(
            "Whatsapp",
          ),
          centerTitle: false,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: "Chats",
              ),
              Tab(
                text: "Profile",
              ),
              Tab(
                text: "Calls",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text("Data Kamera"),
            ),
                    Center(
              child: Text("Data Chars"),
            ),
                    Center(
              child: Text("Data Status"),
            ),
                    Center(
              child: Text("Data Panggilan"),
            ),
          ],
        ),
      ),
    );
  }
}

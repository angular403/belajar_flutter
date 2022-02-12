import 'package:flutter/material.dart';

class BarTab extends StatelessWidget {
  const BarTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Whatsapp",
          ),
          centerTitle: false,
          backgroundColor: Colors.teal,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: "Chats",
              ),
              Tab(
                text: "Status",
              ),
              Tab(
                text: "Calls",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text("Camera")),
            Center(child: Text("Chars")),
            Center(child: Text("Status")),
            Center(child: Text("Callss")),
          ],
        ),
      ),
    );
  }
}

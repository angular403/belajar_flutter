import 'package:flutter/material.dart';

class Drawers extends StatelessWidget {
  const Drawers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              width: double.infinity,
              height: 200,
              color: Colors.blue,
              child: Text(
                "Menu Utama",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.zero,
                children: [
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                  ),
                  ListTile(
                    leading: Icon(Icons.shopping_cart),
                    title: Text("Product"),
                  ),
                  ListTile(
                    leading: Icon(Icons.photo_album),
                    title: Text("Photo"),
                  ),
                  ListTile(
                    leading: Icon(Icons.piano),
                    title: Text("piano"),
                  ),
                  ListTile(
                    leading: Icon(Icons.alarm),
                    title: Text("alarm"),
                  ),
                  ListTile(
                    leading: Icon(Icons.logout),
                    title: Text("Logout"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

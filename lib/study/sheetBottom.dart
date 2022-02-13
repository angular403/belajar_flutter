import 'package:flutter/material.dart';

class SheetBottom extends StatefulWidget {
  const SheetBottom({Key? key}) : super(key: key);

  @override
  _SheetBottomState createState() => _SheetBottomState();
}

class _SheetBottomState extends State<SheetBottom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlutterLogo(),
        title: Text("Belajar SheetBottom"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("BottomSheet"),
          onPressed: () {
            showModalBottomSheet(
              isDismissible: false,
              context: context,
              builder: (context) => SizedBox(
                width: 250,
                child: ListView(
                  children: [
                    ListTile(
                      leading: Icon(Icons.camera_alt),
                      title: Text("Camera"),
                    ),
                    ListTile(
                      leading: Icon(Icons.multitrack_audio),
                      title: Text("Audio"),
                    ),
                    ListTile(
                      leading: Icon(Icons.music_note),
                      title: Text("Music"),
                    ),
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text("Person"),
                    ),
                    ListTile(
                      leading: Icon(Icons.picture_in_picture_alt_sharp),
                      title: Text("Gallery"),
                    ),
                    ListTile(
                      leading: Icon(Icons.cancel),
                      title: Text("Cancel"),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.red[900],
            fixedSize: Size(200, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
      ),
    );
  }
}

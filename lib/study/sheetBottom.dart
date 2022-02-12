import 'package:flutter/material.dart';

class SheetBottom extends StatelessWidget {
  const SheetBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan BottomSheet"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: ElevatedButton(
            child: Text("Show Modal BottomSheet"),
            onPressed: () {
              showModalBottomSheet(
                isDismissible: false,
                context: context,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                builder: (context) => SizedBox(
                  height: 300,
                  child: ListView(
                    children: [
                      ListTile(
                        leading: Icon(Icons.photo),
                        title: Text("Photo"),
                      ),
                      ListTile(
                        leading: Icon(Icons.music_note_rounded),
                        title: Text("Music"),
                      ),
                      ListTile(
                        leading: Icon(Icons.video_collection),
                        title: Text("Video"),
                      ),
                      ListTile(
                        leading: Icon(Icons.share),
                        title: Text("Share"),
                      ),
                      ListTile(
                        onTap: () => Navigator.pop(context),
                        leading: Icon(Icons.cancel),
                        title: Text("Cancel"),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ShowDialog extends StatelessWidget {
  const ShowDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Show Dialog"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Show Dialog"),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
                title: Text("Ini Judul"),
                content: Text("Ini adalah deskripsi dialog"),
                actions: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Cancel"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Save"),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

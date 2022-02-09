import 'package:flutter/material.dart';

class Snack extends StatelessWidget {
  const Snack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Latihan Snackbar"),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text("Show Snackbar"),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Hapus Data Siswa"),
                  action: SnackBarAction(
                      label: "Cancel",
                      onPressed: () {
                        print("Data tidak jadi dihapus");
                      }),
                      margin: EdgeInsets.all(20),
                      behavior: SnackBarBehavior.floating,
                      duration: Duration(seconds: 3),
                      backgroundColor: Colors.green,
                ),
              );
            },
          ),
        ));
  }
}

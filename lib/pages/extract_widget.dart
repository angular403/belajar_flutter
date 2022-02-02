import 'package:flutter/material.dart';

class ExtractWidget extends StatelessWidget {
  const ExtractWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Extract Widget"),
      ),
      body: Column(
        children: [
          KotakWarna(
            warna: Colors.red,
            text: "Merah",
          ),
          KotakWarna(
            warna: Colors.amber,
            text: "Kuning",
          ),
          KotakWarna(
            warna: Colors.green,
            text: "Hijau",
          ),
        ],
      ),
    );
  }
}

class KotakWarna extends StatelessWidget {
  const KotakWarna({
    Key? key,
    required this.warna,
    required this.text,
  }) : super(key: key);

  final Color warna;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: warna,
      child: Center(
        child: Text(
          text,
        ),
      ),
    );
  }
}

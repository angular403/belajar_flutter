import 'package:flutter/material.dart';

class InfoItem extends StatelessWidget {
  const InfoItem({
    required this.title,
    required this.value,
    Key? key,
  }) : super(key: key);

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          title,
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
      ],
    );
  }
}

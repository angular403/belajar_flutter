import 'package:flutter/material.dart';
// import 'package:avatar_glow/avatar_glow.dart';

import 'package:avatar_glow/avatar_glow.dart';

class LatihanAvatarGlow extends StatelessWidget {
  const LatihanAvatarGlow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("avatar glow"),
      ),
      body: Center(
        child: AvatarGlow(
          glowColor: Colors.blue,
          endRadius: 300.0,
          duration: Duration(milliseconds: 2000),
          repeat: true,
          showTwoGlows: true,
          repeatPauseDuration: Duration(milliseconds: 100),
          child: Material(
            // Replace this child with your own
            elevation: 8.0,
            shape: CircleBorder(),
            child: CircleAvatar(
              backgroundColor: Colors.grey[100],
              backgroundImage: NetworkImage("https://picsum.photos/200"),
              radius: 150.0,
            ),
          ),
        ),
      ),
    );
  }
}

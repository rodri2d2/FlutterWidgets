import 'package:flutter/material.dart';

class AvatarView extends StatelessWidget {
  const AvatarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar View'),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 5),
            child: CircleAvatar(
              child: Text('AT'),
            ),
          )
        ],
      ),
      body: Center(
        child: CircleAvatar(
          maxRadius: 100,
          backgroundImage: NetworkImage(
              'https://upload.wikimedia.org/wikipedia/en/0/05/Hatsukoi_Utada.png'),
        ),
      ),
    );
  }
}

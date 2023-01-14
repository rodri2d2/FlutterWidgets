import 'package:flutter/material.dart';


class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home View'),
        ),
        body: Center(
          child: Container(
            child: const Text('Hello home view'),
          ),
        ),
      ),
    );
  }
}

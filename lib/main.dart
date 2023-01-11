import 'package:flutter/material.dart';
import 'package:flutter_widgets/views/listView_1.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
      title: 'Flutter Widgets',
      home: ListView1(),
    );
  }
}
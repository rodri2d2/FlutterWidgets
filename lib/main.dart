import 'package:flutter/material.dart';


import 'views/views.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Widgets',
      initialRoute: 'homeView',
      routes: {
        'homeView': (context) =>  HomeView(),
        'listView_1': (context) => const ListView1(),
        'listView_2': (context) => const ListView2(),
        'alertView': (context) => const AlertView(),
      },
    );
  }
}
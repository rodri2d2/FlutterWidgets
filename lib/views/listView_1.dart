import 'package:flutter/material.dart';

class ListView1 extends StatelessWidget {
  final options = const ['MegaMan', 'Final Fantasy', 'ZELDA', 'Mario'];

  //
  ListView1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List view type 1'),
      ),
      body: Text('List View'),
    );
  }
}

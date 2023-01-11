import 'package:flutter/material.dart';

class ListView1 extends StatelessWidget {
  const ListView1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List view type 1'),
      ),
      body: const Center(
        child: Text('Listview 1'),
      ),
    );
  }
}

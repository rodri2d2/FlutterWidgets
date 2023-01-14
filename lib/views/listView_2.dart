import 'package:flutter/material.dart';

class ListView2 extends StatelessWidget {

  final options = const['MegaMan', 'Final Fantasy', 'ZELDA', 'Mario'];

  //
  const ListView2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List view type 2'),
        elevation: 0,
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index]),
          trailing: const Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.indigo,
          ),
          onTap: () {
            print(options[index]);
          },
        ),
        separatorBuilder: (_, index) => const Divider()
      )
    );
  }
}

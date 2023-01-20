import 'package:flutter/material.dart';
import '../../resourses/app_theme.dart';

class CustomCardTypeOne extends StatelessWidget {
  const CustomCardTypeOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        const ListTile(
          leading: Icon(
            Icons.photo_album_outlined,
            color: AppTheme.primary,
          ),
          title: Text('Un titulo'),
          subtitle:
              Text('Laboris esse esse officia fugiat exercitation voluptate'),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: Text('Cancel'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('OK'),
              )
            ],
          ),
        ),
      ],
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_widgets/resourses/app_theme.dart';

class CustomCardTypeTwo extends StatelessWidget {
  final String imageURL;
  final String? description;

  const CustomCardTypeTwo({
    super.key,
    required this.imageURL,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      shadowColor: AppTheme.primary.withOpacity(0.2),
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(imageURL),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
          ),
          if (description != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(description ?? 'No title'),
            )
        ],
      ),
    );
  }
}

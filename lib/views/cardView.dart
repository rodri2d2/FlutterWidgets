import 'package:flutter/material.dart';
import 'package:flutter_widgets/views/comon_components/comon_components.dart';

class CardView extends StatelessWidget {
  String image =
      "https://www.japan-experience.com/sites/default/files/styles/scale_crop_480x250/public/legacy/japan_experience/1518450368704.jpg?h=199d8c1f&itok=AWKlNFbs";

  CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card View'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          const CustomCardTypeOne(),
          SizedBox(
            height: 10,
          ),
          CustomCardTypeTwo(
            imageURL: image,
            description: 'Kyoto en invierno',
          ),
          CustomCardTypeTwo(imageURL: image)
        ],
      ),
    );
  }
}

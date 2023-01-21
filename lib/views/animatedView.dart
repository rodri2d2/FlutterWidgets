import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedView extends StatefulWidget {
  const AnimatedView({super.key});

  @override
  State<AnimatedView> createState() => _AnimatedViewState();
}

class _AnimatedViewState extends State<AnimatedView> {
  double _witdh = 150;
  double _height = 150;
  Color _color = Colors.indigo;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeOutCubic,
          width: _witdh,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.play_circle_outline,
          size: 35,
        ),
        onPressed: () => onChangeShape(),
      ),
    );
  }

  void onChangeShape() {
    final random = Random();
    _witdh = random.nextInt(300).toDouble() + 70;
    _height = random.nextInt(300).toDouble() + 70;
    _borderRadius = BorderRadius.circular(random.nextInt(300).toDouble());
    _color = Color.fromRGBO(
        random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);

    setState(() {});
  }
}

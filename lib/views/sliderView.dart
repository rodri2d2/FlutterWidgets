import 'package:flutter/material.dart';
import 'package:flutter_widgets/resourses/app_theme.dart';

class SliderView extends StatefulWidget {
  const SliderView({super.key});

  @override
  State<SliderView> createState() => _SliderViewState();
}

class _SliderViewState extends State<SliderView> {
  double _sliderValue = 100;
  bool _isSliderEnable = true;
  //
  String imageURL =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROAG0sQq8okNvJsLrlCSoWyKiPUFJbWAh0bA&usqp=CAU';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider and Checks'),
      ),
      body: Column(children: [
        Slider.adaptive(
          min: 50,
          max: 100,
          value: _sliderValue,
          onChanged: _isSliderEnable
              ? (value) => setState(() {
                    _sliderValue = value;
                  })
              : null,
        ),
        Checkbox(
            value: _isSliderEnable,
            onChanged: (value) => setState(() {
                  _isSliderEnable = value ?? true;
                })),
        CheckboxListTile(
            title: const Text('Habilitar Slider'),
            activeColor: AppTheme.primary,
            value: _isSliderEnable,
            onChanged: ((value) => setState(() {
                  _isSliderEnable = value ?? true;
                }))),
        Switch(
            value: _isSliderEnable,
            onChanged: ((value) => setState(() {
                  _isSliderEnable = value ?? true;
                }))),
        SwitchListTile(
            title: Text('Habilitar'),
            value: _isSliderEnable,
            onChanged: ((value) => setState(() {
                  _isSliderEnable = value ?? true;
                }))),
        SwitchListTile.adaptive(
            title: Text('Habilitar'),
            value: _isSliderEnable,
            onChanged: ((value) => setState(() {
                  _isSliderEnable = value ?? true;
                }))),
        Expanded(
          child: SingleChildScrollView(
            child: Image(
              image: NetworkImage(imageURL),
              fit: BoxFit.contain,
              width: _sliderValue,
            ),
          ),
        ),
        SizedBox(
          height: 50,
        )
      ]),
    );
  }
}

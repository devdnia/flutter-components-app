import 'package:flutter/material.dart';

import 'package:components_app/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Slider & Checks'),
        ),
        body: Column(
          children: [
            const SizedBox(height: 30),

            Slider.adaptive(
                min: 50,
                max: 400,
                activeColor: AppTheme.primary,
                value: _sliderValue,
                onChanged: _sliderEnabled
                    ? (value) {
                        _sliderValue = value;
                        setState(() {});
                      }
                    : null),

            const SizedBox(height: 30),

            // Checkbox(
            //   value: _sliderEnabled,
            //   onChanged: ( value ) {
            //     _sliderEnabled = value ?? true;
            //     setState(() {});
            //   },
            // ),

            CheckboxListTile(
                activeColor: AppTheme.primary,
                title: const Text('Habilitar Slider'),
                value: _sliderEnabled,
                onChanged: (value) => setState(() {
                      _sliderEnabled = value ?? true;
                    })),

            // Switch(
            //   activeColor: AppTheme.primary,
            //   value: _sliderEnabled,
            //   onChanged: ( value ) => setState(() {_sliderEnabled = value;})
            // ),

            SwitchListTile.adaptive(
                activeColor: AppTheme.primary,
                title: const Text('Habilitar Slider'),
                value: _sliderEnabled,
                onChanged: (value) => setState(() {
                      _sliderEnabled = value;
                    })),

            // Descripción de licencias de nuestra app
            const AboutListTile(),

            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-mrMwhJLcl_AD6q7vfeHECZMxd0uT5TObKw&usqp=CAU'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            ),
          ],
        ));
  }
}

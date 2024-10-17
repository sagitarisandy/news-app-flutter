import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project/styles.dart';

class AdaptivePage extends StatefulWidget{
  static const routeName = '/cupertino';
  const AdaptivePage ({Key? key}) : super (key: key);

  @override
  _AdaptivePageState createState() => _AdaptivePageState();
}

class _AdaptivePageState extends State<AdaptivePage> {
  bool _isSelected = true;
  double _sliderValue = 75;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adaptive Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch.adaptive(
              value: _isSelected,
              activeColor: Color(0xFF6B38FB),
              onChanged: (value){
                setState(() {
                  _isSelected = value;
                });
              },
            ),
            Slider.adaptive(
              value: _sliderValue,
              min: 0,
              max: 100,
              onChanged: (value) {
                setState(() {
                  _sliderValue = value;
                });
              },
            ),
            defaultTargetPlatform == TargetPlatform.iOS
                ? Text('IOS') 
                : Text('Android')
          ],
        ),
      ),
    );
  }
}
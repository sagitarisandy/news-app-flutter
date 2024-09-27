import 'package:flutter/material.dart';
import 'package:project/widget-design/calculator.dart';
import 'package:project/widget-design/constraints_box.dart';
import 'package:project/widget-design/gesture_detector.dart';
import 'package:project/widget-design/layout_constraints.dart';
import 'package:project/widget-design/material_design.dart';
import 'package:project/widget-design/typography.dart';

class WidgetDesign extends StatelessWidget {
  static const routeName = '/widget_design';
  const WidgetDesign({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget UI Design'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, LayoutConstraints.routeName);
              },
              child: const Text('Layout Constraints')
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, ConstraintsBoxArya.routeName);
              },
              child: const Text('Constraints Box')
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, MaterialDesignArya.routeName);
              },
              child: const Text('Material Design')
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, LoremIpsum.routeName);
              },
              child: const Text('Typography')
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, GestureHome.routeName);
              },
              child: const Text('Gesture Detector')
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Calculator.routeName);
              },
              child: const Text('Calculator')
            ),
          ],
        ),
      ),
    );
  }
}
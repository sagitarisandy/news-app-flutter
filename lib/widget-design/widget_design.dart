import 'package:flutter/material.dart';
import 'package:project/components/button.dart';
import 'package:project/pixel_page.dart';
import 'package:project/widget-design/calculator.dart';
import 'package:project/widget-design/constraints_box.dart';
import 'package:project/widget-design/cupertino-app-design/cupertino_app.dart';
import 'package:project/widget-design/cupertino.dart';
import 'package:project/widget-design/gesture_detector.dart';
import 'package:project/widget-design/latihan-silver-list/learning_path_page.dart';
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
            CustomElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, LayoutConstraints.routeName);
              },
              text: 'Layout Constraints'
            ),
            CustomElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, ConstraintsBoxArya.routeName);
              },
              text:'Constraints Box'
            ),
            CustomElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, MaterialDesignArya.routeName);
              },
              text:'Material Design'
            ),
            CustomElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, LoremIpsum.routeName);
              },
              text:'Typography'
            ),
            CustomElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, GestureHome.routeName);
              },
              text:'Gesture Detector'
            ),
            CustomElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Calculator.routeName);
              },
              text:'Calculator'
            ),
            CustomElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, PixelPage.routeName);
              },
              text:'Pixel Page'
            ),
            CustomElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, LearningPathPage.routeName);
              },
              text:'Learning Path Page'
            ),
            CustomElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AdaptivePage.routeName);
              },
              text:'Adaptive Page'
            ),
            CustomElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, HomePage.routeName);
              },
              text:'Cupertino App'
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:project/components/button.dart';
import 'package:project/widget-design/layout_constraints.dart';
import 'package:project/widget-design/widget_design.dart';

class FirstScreen extends StatelessWidget {
  static const routeName = '/';
  const FirstScreen ({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Learning from 20 September'),
            SizedBox(height:20),
            CustomElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/news_list_page');
              },
              text: 'Go To News 📰'
            ),
            CustomElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, WidgetDesign.routeName);
              },
              text: 'Widget UI Design 📝'
            )
          ],
        ),
      ),
    );
  }
}
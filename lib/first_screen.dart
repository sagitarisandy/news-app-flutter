import 'package:flutter/material.dart';
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
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/artilce_list');
              },
              child: const Text('Go To News 📰')
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, WidgetDesign.routeName);
              },
              child: const Text('Widget UI Design 📝')
            )
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class LayoutConstraints extends StatelessWidget {
  static const routeName = '/layout_constraints';
  const LayoutConstraints({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context){
    return Center(
      child: Container(
        color: Colors.red,
        padding: const EdgeInsets.all(10.0),
        child: Container(
          color: Colors.green,
          height: 100,
          width: 100,
          child:
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Back'),
          )
        ),
      ),
    );
  }
}
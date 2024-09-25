import 'package:flutter/material.dart';

class ConstraintsBoxArya extends StatelessWidget{
  static const routeName = '/constraints_box';
  const ConstraintsBoxArya({Key? key}) : super (key: key);
  
  @override
  Widget build(BuildContext context){
    // return Center(
    //   child: ConstrainedBox(
    //     constraints: BoxConstraints(
    //       minWidth: 70,
    //       minHeight: 70,
    //       maxWidth: 150,
    //       maxHeight: 150
    //     ),
    //     child: Container(
    //       color: Colors.red
    //     ),
    //   )
    // );

    // return UnconstrainedBox(
    //   child: Container(
    //     color: Colors.red,
    //     width: 1000,
    //     height: 100,
    //   ),
    // );

    // return Row(
    //   children: [
    //     Expanded(
    //       child: Container(
    //         color: Colors.red,
    //         child: Text('Hello This is a very long Text!')
    //       ),
    //     ),
    //     Expanded(
    //       child: Container(
    //         color: Colors.green,
    //         child: Text('Goodbye'),
    //       )
    //     )
    //   ],
    // );

    return Row(
      children: [
        Flexible(
          child: Container(
            color: Colors.red,
            child: Text('Hello This is a very long Text!')
          ),
        ),
        Flexible(
          child: Container(
            color: Colors.green,
            child: Text('Goodbye'),
          )
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Back'),
          )
      ],
    );
  }
}
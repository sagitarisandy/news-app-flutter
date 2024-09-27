import 'package:flutter/material.dart';

class GestureHome extends StatefulWidget {
  static const routeName = '/gesture_detector';
  const GestureHome({Key? key}) : super (key: key);

  @override
  _GestureHomeState createState() => _GestureHomeState();
}

class _GestureHomeState extends State<GestureHome> {
  final double boxSize = 150.0;
  int numTaps = 0;
  int numDoubleTaps = 0;
  int onLongPress = 0;



  @override
  Widget build(BuildContext context) {
    if (posX == 0) {
      center(context);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Gesture Detector'),
      ),
      body: Stack(
          children: [
            Positioned(
              top: posY,
              left: posX,

              child: GestureDetector(
                onPanUpdate: (DragUpdateDetails details){
                  setState((){
                    double deltaX = details.delta.dx;
                    double deltaY = details.delta.dy;

                    posY += deltaY;
                    posX += deltaX;
                  });
                },
                onTap: () {
                  setState((){
                    numTaps++;
                  });
                },
                onDoubleTap: () {
                  setState((){
                    numDoubleTaps++;
                  });
                },
                onLongPress: () {
                  setState(() {
                    onLongPress++;
                  });
                },
                child: Container(
                  width: boxSize,
                  height: boxSize,
                  decoration: BoxDecoration(color: Colors.red),
                ),
              )
            )
          ]
      ),
      bottomNavigationBar: Container(
        color: Colors.yellow,
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'Taps: $numTaps - Double Taps: $numDoubleTaps - Long Press: $onLongPress',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }

  double posX = 0.0;
  double posY = 0.0;

  void center (BuildContext context) {
    posX = (MediaQuery.of(context).size.width / 2) - boxSize / 2;
    posY = (MediaQuery.of(context).size.height / 2) - boxSize / 2 - 30;

    setState(() {
      this.posX = posX;
      this.posY = posY;
    });
  }
}

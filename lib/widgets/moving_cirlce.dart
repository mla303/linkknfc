// import this Package in pubspec.yaml file
// dependencies:
// 
//   animator: ^3.0.0

import 'package:animator/animator.dart';
import 'package:flutter/material.dart';

class MovingCircle extends StatefulWidget {
  @override
  _MovingCircleState createState() => _MovingCircleState();
}

class _MovingCircleState extends State<MovingCircle> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
          height: w / 2,
          width: w / 4,
          child: Animator<double>(
            duration: Duration(milliseconds: 2000),
            cycles: 0,
            curve: Curves.easeInOut,
            tween: Tween<double>(begin: 0.0, end: 10.0),
            builder: (context, animatorState, child) => Column(
              children: [
                SizedBox(
                  height: animatorState.value * 5,
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(.15),
                        blurRadius: 20,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Image(image: AssetImage("assets/circle.png"),
                    height: 90,
                    width: 90,

                  ),
                ),
              ],
            ),
          ),
        );


  }
}
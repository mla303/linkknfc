import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String text;

  TitleText(this.text);
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(0.0, -0.4),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.grey[700],
          fontFamily: "Inter",
          fontWeight: FontWeight.w900,
          fontSize: 36,
          decoration: TextDecoration.none,
        ),
      ),
    );
  }
}

class TagText extends StatelessWidget {
  final String text;

  TagText(this.text);
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(0.0, -0.3),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.grey[700],
          fontFamily: "Inter",
          fontWeight: FontWeight.bold,
          fontSize: 16,
          decoration: TextDecoration.none,
        ),
      ),
    );
  }
}

class Signupline extends StatelessWidget {
  final String text;
  Signupline(this.text);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 70,
          height: 1,
          decoration: BoxDecoration(
            color: Colors.grey[700],
          ),
          child: Container(),
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey[700],
            fontFamily: "Inter",
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          width: 70,
          height: 1,
          decoration: BoxDecoration(
            color: Colors.grey[700],
          ),
          child: Container(),
        ),
      ],
    );
  }
}

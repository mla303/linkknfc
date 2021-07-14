import 'package:flutter/material.dart';

class PhoneImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image(
          image: AssetImage('assets/phone.png'),
          fit: BoxFit.cover,
    );
  }
}

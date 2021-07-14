import 'package:flutter/material.dart';

class LinkkLogoL extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/largelogo.png'),
          alignment: Alignment(0.00, -0.6),
        ),
      ),
    );
  }
}

class LinkkLogoM extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/mediumlogo.png'),
          alignment: Alignment(0.00, -0.7),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:linkknfc/screens/apps.dart';
import 'package:linkknfc/screens/trial.dart';

import 'screens/splashscreen.dart';

// import 'package:linkknfc/screens/create_account.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Linkk',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Splashscreen(),
    );
  }
}

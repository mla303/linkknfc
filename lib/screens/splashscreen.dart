import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkknfc/widgets/widgets.dart';

import 'activate_link.dart';
import 'edit_personal.dart';
import 'home_personal.dart';
import 'splashscreen_onetime.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2)).then((value) {
      Get.to(ViewPersonal());
    });
    super.initState();
  }
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        LinkkLogoL(),
      ],
    );
  }
}

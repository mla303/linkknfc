/*
*  splashscreen_one_time_widget.dart
*  Linkk
*
*  Created by S Goonasekera.
*  Copyright © 2018 LinkkNFC. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:linkknfc/create_account_widget/create_account_widget.dart';
//import 'package:linkknfc/values/values.dart';
import 'package:linkknfc/widgets/widgets.dart';

import 'create_account.dart';

class SplashscreenOneTimeWidget extends StatelessWidget {
  void onSetUpYourLInkkPressed(BuildContext context) => null;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        LinkkLogoL(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            constraints: BoxConstraints.expand(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    width: 320,
                    height: 60,
                    margin: EdgeInsets.only(bottom: 91),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue, // background
                        onPrimary: Colors.white, // foreground
                      ),
                      onPressed: () {
                        Get.to(Createaccount());
                      },
                      child: Text('Set up your Linkk'),
                    )),
                Container(
                    margin: EdgeInsets.only(bottom: 56),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.grey[700],
                      ),
                      onPressed: () {},
                      child: Text('Already have an account? Log in'),
                    )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

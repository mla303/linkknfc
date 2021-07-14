/*
*  splashscreen_one_time_widget.dart
*  Linkk
*
*  Created by S Goonasekera.
*  Copyright © 2018 LinkkNFC. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkknfc/widgets/moving_cirlce.dart';
import 'package:linkknfc/widgets/phone_image.dart';
//import 'package:linkknfc/create_account_widget/create_account_widget.dart';
//import 'package:linkknfc/values/values.dart';
import 'package:linkknfc/widgets/widgets.dart';

import 'create_account.dart';

class ActivateLink extends StatelessWidget {
  void onSetUpYourLInkkPressed(BuildContext context) => null;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Positioned(

          top: Get.height/8,
          left: Get.width/3,
          child: Container(
            color: Colors.transparent,
              height: Get.height/5,
              width: Get.width/3,
              child: MovingCircle()),
        ),
        Scaffold(
          appBar: buildAppBar(context),
          backgroundColor: Colors.transparent,
          body: Container(
            constraints: BoxConstraints.expand(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                PhoneImage(),
                Container(
                    width: 320,
                    height: 60,
                    margin: EdgeInsets.only(bottom:10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue, // background
                        onPrimary: Colors.white, // foreground
                      ),
                      onPressed: () {
                        Get.to(Createaccount());
                      },
                      child: Text('Activate your Linkk'),
                    )),
                Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.grey[700],
                      ),
                      onPressed: () {},
                      child: Text('Your Linkk will be activated with the profile:\nlinkk.co.uk/username',
                      textAlign: TextAlign.center,),
                    )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

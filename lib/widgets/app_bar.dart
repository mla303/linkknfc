import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkknfc/screens/edit_personal.dart';
import 'package:linkknfc/screens/preview_profile.dart';

import 'button_widget.dart';

AppBar buildAppBar(BuildContext context) {
  final icon = CupertinoIcons.moon_zzz;

  return AppBar(
    leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          color: Colors.grey.shade800,
          padding: EdgeInsets.only(left: 20),
          icon: const Icon(
            Icons.menu,
            size: 36.0,
          ),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        );
      },
    ),
    backgroundColor: Colors.transparent,
    elevation: 0,
    actions: [
      IconButton(
        color: Colors.grey.shade800,
        padding: EdgeInsets.only(right: 20),
        onPressed: () {},
        icon: Icon(icon, size: 28.0),
      )
    ],
  );
}


AppBar editAppBar(BuildContext context) {
  final icon = CupertinoIcons.moon_zzz;

  return AppBar(

    title: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Edit Profile",
          style: TextStyle(
              fontSize: 20,color: Colors.grey,
          fontWeight: FontWeight.bold),
        ),
      ],
    ),
    backgroundColor: Colors.white,
    elevation: 0,
    actions: [
      Row(
        children: [
          GestureDetector(
            onTap: (){
              Get.to(PreviewProfile());
            },
            child: Container(
              width: Get.width/3.5,
              height: Get.height/20,

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)
                  ),
                  shape: BoxShape.rectangle,
//                        color: Colors.green

                  color: Colors.blue),

              child: Center(
                child: Text("Preview profile",style: TextStyle(
                    color: Colors.white,
                    fontSize: 12
                ),),
              ),
            ),
          ),
          SizedBox(width: 10,)
        ],
      ),
    ],
  );
}


AppBar buildAppBar1(BuildContext context) {
  final icon = CupertinoIcons.moon_zzz;

  return AppBar(

    leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          color: Colors.grey.shade800,
          padding: EdgeInsets.only(left: 20),
          icon: const Icon(
            Icons.menu,
            size: 36.0,
          ),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          // tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        );
      },
    ),
    backgroundColor: Colors.transparent,
    elevation: 0,
    actions: [
      Row(
        children: [
          GestureDetector(
            onTap: (){
              Get.to(EditPersonal());
            },
            child: Container(
              width: Get.width/3.5,
              height: Get.height/20,

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)
                  ),
                  shape: BoxShape.rectangle,
//                        color: Colors.green

                  color: Colors.white),

              child: Center(
                child: Text("Edit profile",style: TextStyle(
                    color: Colors.black54,
                    fontSize: 12
                ),),
              ),
            ),
          ),
          SizedBox(width: 10,)
        ],
      ),
      // ButtonWidgetOutline(
      //
      //   text: 'edit profile',
      // onClicked: (){
      //   Navigator.of(context).push(
      //     MaterialPageRoute(builder: (context) => EditPersonal()),
      //   );
      // },)
    ],
  );
}
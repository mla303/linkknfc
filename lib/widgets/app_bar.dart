import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkknfc/screens/edit_personal.dart';

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
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        );
      },
    ),
    backgroundColor: Colors.transparent,
    elevation: 0,
    actions: [
      ButtonWidgetOutline(text: 'edit profile',
      onClicked: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => EditPersonal()),
        );
      },)
    ],
  );
}
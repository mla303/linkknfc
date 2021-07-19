import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkknfc/screens/activate_link.dart';
import 'package:linkknfc/screens/qr_code.dart';

class myDrawer extends StatelessWidget {

  Color textColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    var pageWidth = MediaQuery.of(context).size.width;
    var pageHeight = MediaQuery.of(context).size.height;


    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.70, //20.0,
      height: MediaQuery.of(context).size.height * 0.84, //20.0,
      child: Drawer(
        child: Container(
          height: pageHeight * .7,
          color: Colors.white.withOpacity(0.9),
          child: ListView(
            children: [
              ListTile(
                onTap: () {

                },
                leading: Icon(Icons.home,color: Colors.black,),
                title: Text(
                  "Home",
                  maxLines: 1,
                  style: TextStyle(
                      color: textColor,
                      fontSize: pageWidth * .04,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
Get.to(ActivateLink());
                },
                leading: Icon(Icons.link,color: Colors.black,),
                title: Text(
                  "Activate your link",
                  maxLines: 1,
                  style: TextStyle(
                    color: textColor,
                    fontSize: pageWidth * .04,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  Get.to(QrCode());
                },
                leading: Icon(Icons.qr_code,color: Colors.black,),
                title: Text(
                  "QR Code",
                  maxLines: 1,
                  style: TextStyle(
                    color: textColor,
                    fontSize: pageWidth * .04,
                  ),
                ),
              ),
              Divider(),
              ListTile(

                leading: Icon(Icons.shopping_cart,color: Colors.black,),
                title: Text(
                  "Shop more",
                  maxLines: 1,
                  style: TextStyle(
                    color: textColor,
                    fontSize: pageWidth * .04,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  // Get.to(ActivateLink());
                },
                leading: Icon(Icons.logout,color: Colors.black,),
                title: Text(
                  "Logout",
                  maxLines: 1,
                  style: TextStyle(
                    color: textColor,
                    fontSize: pageWidth * .04,
                  ),
                ),
              ),
              SizedBox(height: 100,),
              Image(image: AssetImage("assets/mediumlogo.png"),
                height: 90,
                width: 90,

              ),
            ],
          ),
        ),
      ),
    );
  }
}



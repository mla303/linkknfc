

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkknfc/widgets/widgets.dart';
import 'package:linkknfc/model/models.dart';
import 'package:linkknfc/widgets/drawer.dart';


enum Widgets {
  addtowallet,
  shareprofile,

}

class QrCode extends StatefulWidget {
  @override
  _QrCodeState createState() => _QrCodeState();
}

class _QrCodeState extends State<QrCode> {
  bool visbile  = false;
  _imgFromCamera() async {

    setState(() {
    });
  }

  Widgets selectedWidget = Widgets.addtowallet;
  List<Widget> itemsData = [];





  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      appBar: buildAppBar1(context),
      drawer: new myDrawer(),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            profileImage: user.profileImage,
            onClicked: () {

            },
          ),
          const SizedBox(height: 24),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: buildName(user),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //personal button
              new GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedWidget = Widgets.addtowallet;
                    });
                    Get.snackbar("Selected", "addtowallet");
                  },
                  child: new Container(
                    width: Get.width/3.5,
                    height: Get.height/20,

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)
                        ),
                        shape: BoxShape.rectangle,
//                        color: Colors.green

                        color: selectedWidget ==
                            Widgets.addtowallet
                            ? Colors.blue
                            : Colors.white),

                    child: Center(
                      child: Text("Add to wallet",style: TextStyle(
                          color:  selectedWidget == Widgets.addtowallet
                              ? Colors.white
                              : Colors.black54,
                          fontSize: 12
                      ),),
                    ),
                  )),
              const SizedBox(width: 10),

              //business button
              new GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedWidget = Widgets.shareprofile;
                    });
                    Get.snackbar("Selected", "shareprofile");
                  },
                  child: new Container(
                    width: Get.width/3.5,
                    height: Get.height/20,

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)
                        ),
                        shape: BoxShape.rectangle,
//                        color: Colors.green

                        color: selectedWidget ==
                            Widgets.shareprofile
                            ? Colors.blue
                            : Colors.white),

                    child: Center(
                      child: Text("Share Profile",style: TextStyle(
                          color:  selectedWidget == Widgets.shareprofile
                              ? Colors.white
                              : Colors.black54,
                          fontSize: 12
                      ),),
                    ),
                  )),


            ],
          ),
          const SizedBox(height: 16),
          Center(
              child: Container(
                  width: Get.width / 1.1,
                  //height: height / 2.2,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        GestureDetector(
                          onTap: (){
                            _showPicker(context);
                          },
                          child: Stack(
                            children: [


                              Container(
                                width: Get.width / 1.6,
                                height: Get.height / 2.4,
                                decoration: BoxDecoration(
                                  // image: DecorationImage(
                                  //   fit: BoxFit.contain,
                                  //
                                  //   // image:  _image==null? AssetImage("images/card.png") : FileImage(_image),
                                  // ),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                                  color: Colors.grey.withOpacity(0.2),
                                ),
                                child:  Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: Image.asset("images/topleft.png")),

                                        Align(
                                            alignment: Alignment.topRight,
                                            child: Image.asset("images/topright.png")),
                                      ],
                                    ),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Image.asset("images/bottomleft.png")),

                                        Align(
                                            alignment: Alignment.bottomRight,
                                            child: Image.asset("images/bottomright.png")),
                                      ],
                                    ),
                                  ],
                                ),

                              ),
                              //
                              // Positioned(
                              //     top: -15,
                              //     left: -15,
                              //     child: Image.asset("images/topleft.png")),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: Get.height / 50,
                        ),

                      ],
                    ),
                  ))),

          const SizedBox(height: 16),
        ],
      ),
    );
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new ListTile(
                leading: new Icon(Icons.photo_camera),
                title: new Text('Camera'),
                onTap: () {
                  setState(() {
                    _imgFromCamera();
                    Navigator.of(context).pop();
                    visbile = true;

                    // Future.delayed(Duration(seconds: 6),(){
                    //   // Navigator.of(context).push(
                    //   //     MaterialPageRoute(builder: (Context) => IdCadScanResult()));
                    // });
                  });

                },
              ),
            ),
          );
        }
    );
  }





  Widget buildName(User user) => Column(
    children: [
      Text(
        user.name,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
      ),
      const SizedBox(height: 10),
      Text(
        user.bio,
        style: TextStyle(color: Colors.grey.shade800, fontSize: 16),
      ),
    ],
  );
}

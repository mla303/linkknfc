import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkknfc/model/list_of_apps.dart';
import 'package:linkknfc/widgets/widgets.dart';
import 'package:linkknfc/model/models.dart';
import 'package:linkknfc/screens/edit_personal.dart';
import 'package:linkknfc/widgets/drawer.dart';


enum Widgets {
  saveContact,
  shareContact,
}

class PreviewProfile extends StatefulWidget {
  @override
  _PreviewProfileState createState() => _PreviewProfileState();
}

class _PreviewProfileState extends State<PreviewProfile> {

  bool closeTopContainer = false;
  Widgets selectedWidget = Widgets.saveContact;
  List<Widget> itemsData = [];
  double topContainer = 0;
  ScrollController controller = ScrollController();
  void getPostsData() {
    List<dynamic> responseList = apps;
    List<Widget> listItems = [];
    responseList.forEach((post) {
      listItems.add(Container(
          height: 60,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 10.0),
              ]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  "assets/${post["image"]}",
                  height: 50,
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      post["appname"],
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      post["hint"],
                      style: const TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          )));
    });
    setState(() {
      itemsData = listItems;
    });
  }

  @override
  void initState() {
    super.initState();
    getPostsData();
    controller.addListener(() {
      double value = controller.offset / 119;

      setState(() {
        topContainer = value;
        closeTopContainer = controller.offset > 50;
      });
    });
  }



  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      appBar: buildAppBar1(context),
      drawer: new myDrawer(),
      body: ListView(
        // physics: BouncingScrollPhysics(),
        children: [
          Container(
            height: Get.height/3,
            child: Stack(
              // alignment: Alignment.bottomRight,
              children: [
                Image(
                  image: AssetImage("assets/bannerpic.png"),
                  fit: BoxFit.fill,
                  height: 150,
                  width: Get.width,
                ),

                Positioned(
                  top: 85,
                  left: 20,
                  child: ProfileWidget(
                    profileImage: user.profileImage,
                    onClicked: () {
                    },
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 2,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: buildName(user),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Save Contact button
              new GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedWidget = Widgets.saveContact;
                    });
                    Get.snackbar("Selected", "Save Contact");
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
                            Widgets.saveContact
                            ? Colors.blue
                            : Colors.white),

                    child: Center(
                      child: Text("Save Contact",style: TextStyle(
                          color:  selectedWidget == Widgets.saveContact
                              ? Colors.white
                              : Colors.black54,
                          fontSize: 12
                      ),),
                    ),
                  )),
              const SizedBox(width: 10),

              //Share Contact button
              new GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedWidget = Widgets.shareContact;
                    });
                    Get.snackbar("Selected", "Share Contact");
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
                            Widgets.shareContact
                            ? Colors.blue
                            : Colors.white),

                    child: Center(
                      child: Text("Share Contact",style: TextStyle(
                          color:  selectedWidget == Widgets.shareContact
                              ? Colors.white
                              : Colors.black54,
                          fontSize: 12
                      ),),
                    ),
                  )),
              const SizedBox(width: 10),
            ],
          ),
          const SizedBox(height: 16),
          Container(
            // color: Colors.red,
            height: Get.height,
            // width: Get.width/1.2,
            child: ListView.builder(
                controller: controller,
                itemCount: itemsData.length,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  double scale = 1.0;
                  return Opacity(
                    opacity: scale,
                    child: Transform(
                      transform: Matrix4.identity()..scale(scale, scale),
                      alignment: Alignment.bottomCenter,
                      child: Align(
                          heightFactor: 0.8,
                          alignment: Alignment.topCenter,
                          child: itemsData[index]),
                    ),
                  );
                }),
          ),

          const SizedBox(height: 16),
        ],
      ),
    );
  }






  Widget buildName(User user) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,

    children: [
      Text(
        user.name,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      const SizedBox(height: 10),
      Container(
        width: Get.width/2,
        child: Text(
          user.bio,
          style: TextStyle(color: Colors.grey.shade800, fontSize: 12),
        ),
      ),
    ],
  );
}

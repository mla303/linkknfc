import 'package:flutter/material.dart';
import 'package:linkknfc/widgets/widgets.dart';
import 'package:linkknfc/model/models.dart';
import 'package:linkknfc/screens/edit_personal.dart';

class ViewPersonal extends StatefulWidget {
  @override
  _ViewPersonalState createState() => _ViewPersonalState();
}

class _ViewPersonalState extends State<ViewPersonal> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: buildAppBar(context),
          body: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              ProfileWidget(
                profileImage: user.profileImage,
                onClicked: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => EditPersonal()),
                  );
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
                  buildPersonalbutton(),
                  const SizedBox(width: 16),
                  buildBusinessbutton(),
                  const SizedBox(width: 16),
                  buildDirectbutton(),
                ],
              ),
            ],
          ),
        ),
      ],
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

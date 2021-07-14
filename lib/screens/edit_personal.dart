import 'package:flutter/material.dart';
import 'package:linkknfc/model/models.dart';
import 'package:linkknfc/widgets/widgets.dart';
import 'package:linkknfc/screens/home_personal.dart';

class EditPersonal extends StatefulWidget {
  @override
  _EditPersonalState createState() => _EditPersonalState();
}

class _EditPersonalState extends State<EditPersonal> {
  User user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          BackgroundImage(),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: buildAppBar(context),
            body: ListView(
              padding: EdgeInsets.symmetric(horizontal: 32),
              physics: BouncingScrollPhysics(),
              children: [
                ProfileWidget(
                  profileImage: user.profileImage,
                  isEdit: true,
                  onClicked: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ViewPersonal()),
                    );
                  },
                ),
                const SizedBox(height: 24),
                TextFieldWidget(
                  label: 'Name',
                  text: user.name,
                  onChanged: (name) {},
                ),
                const SizedBox(height: 24),
                TextFieldWidget(
                    label: 'Bio',
                    text: user.bio,
                    maxLines: 4,
                    onChanged: (bio) {}),
                const SizedBox(height: 24),
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

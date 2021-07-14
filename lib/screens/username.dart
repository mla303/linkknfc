import 'package:flutter/material.dart';
import 'package:linkknfc/widgets/widgets.dart';

class Username extends StatefulWidget {
  @override
  _Username createState() => _Username();
}

class _Username extends State<Username> {
  final usernameController = TextEditingController();

  @override
  void initState() {
    super.initState();

    usernameController.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        new TextEditingController().clear();
      },
      child: Stack(
        children: [
          BackgroundImage(),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Image.asset('assets/mediumlogo.png'),
                  alignment: Alignment.center,
                ),
                TitleText('Username'),
                TagText('Create a username for your account'),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: buildUsername(),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                    width: 320,
                    height: 60,
                    margin: EdgeInsets.symmetric(horizontal: 24),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue, // background
                        onPrimary: Colors.white, // foreground
                      ),
                      onPressed: () {
                        print('Email: ${usernameController.text}');
                      },
                      child: Text('Continue'),
                    )),
                SizedBox(
                  height: 20,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'My profile link: ',
                      ),
                      Text(
                        'linkk.co.uk/',
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        usernameController.text,
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ]),
                SizedBox(
                  height: 240,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

//
  Widget buildUsername() => TextField(
        controller: usernameController,
        decoration: InputDecoration(
            labelText: 'Username',
            prefixIcon: Icon(Icons.person_outline),
            suffixIcon: usernameController.text.isEmpty
                ? Container(width: 0)
                : IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () => usernameController.clear(),
                  ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.grey, width: 2),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.blue, width: 2),
            )),
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.done,
        onChanged: (value) {
          usernameController.text;
        },
      );
}

import 'package:flutter/material.dart';

class UsernameInput extends StatefulWidget {
  final String username;
  final String appname;

  UsernameInput(this.username, this.appname);

  @override
  _UsernameInput createState() => _UsernameInput();
}

class _UsernameInput extends State<UsernameInput> {
  final usernameInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Text(widget.appname),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: TextField(
            controller: usernameInputController,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: widget.username,
            ),
          ),
        ),
      ],
    );
  }
}

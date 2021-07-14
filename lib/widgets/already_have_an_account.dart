import 'package:flutter/material.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  final bool login;

  const AlreadyHaveAnAccount({
    Key? key,
    this.login = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
      Text(
        login ? 'Already have an account? ' : 'Already have an account? ',
        style: TextStyle(
          color: Colors.grey[700],
          fontFamily: "Inter",
          fontWeight: FontWeight.w500,
        ),
      ),
      TextButton(
        style: TextButton.styleFrom(
          primary: Colors.blue,
        ),
        onPressed: () {},
        child: Text('Log in'),
      )
    ]);
  }
}

class DontHaveAnAccount extends StatelessWidget {
  final bool login;

  const DontHaveAnAccount({
    Key? key,
    this.login = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
      Text(
        login ? 'Don\'t have an account? ' : 'Don\'t have an account? ',
        style: TextStyle(
          color: Colors.grey[700],
          fontFamily: "Inter",
          fontWeight: FontWeight.w500,
        ),
      ),
      TextButton(
        style: TextButton.styleFrom(
          primary: Colors.blue,
        ),
        onPressed: () {},
        child: Text('Sign up'),
      )
    ]);
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkknfc/widgets/widgets.dart';

import 'log_in.dart';

class Createaccount extends StatefulWidget {
  @override
  _Createaccount createState() => _Createaccount();
}

class _Createaccount extends State<Createaccount> {
  final emailController = TextEditingController();
  String password = '';
  bool isPasswordVisible = false;

  @override
  void initState() {
    super.initState();

    emailController.addListener(() => setState(() {}));
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
                TitleText('Create Account'),
                TagText('Sign up to get started!'),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: buildEmail(),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: buildPassword(),
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
                        print('Email: ${emailController.text}');
                        print('Password: $password');
                        Get.to(Login());
                      },
                      child: Text('Sign up'),
                    )),
                SizedBox(height: 20),
                Signupline('or sign up with'),
                SizedBox(height: 20),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                    child: IconButton(
                      iconSize: 50,
                      icon: Image.asset('assets/Facebook.png'),
                      onPressed: () => {},
                    ),
                  ),
                  SizedBox(width: 60),
                  Container(
                    child: IconButton(
                      iconSize: 50,
                      icon: Image.asset('assets/Google.png'),
                      onPressed: () => {},
                    ),
                  ),
                ]),
                SizedBox(
                  height: 10,
                ),
                AlreadyHaveAnAccount(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "By signing up, you agree to our Terms and Conditions & Privacy Policy",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

//
  Widget buildEmail() => TextField(
        controller: emailController,
        decoration: InputDecoration(
            hintText: 'name@example.com',
            labelText: 'Email',
            prefixIcon: Icon(Icons.mail_outline),
            suffixIcon: emailController.text.isEmpty
                ? Container(width: 0)
                : IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () => emailController.clear(),
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
      );

  Widget buildPassword() => TextField(
        onChanged: (value) => setState(() => this.password = value),
        decoration: InputDecoration(
            labelText: 'Password',
            prefixIcon: Icon(Icons.lock_outlined),
            suffixIcon: IconButton(
              icon: isPasswordVisible
                  ? Icon(Icons.visibility_off_outlined)
                  : Icon(Icons.visibility),
              onPressed: () =>
                  setState(() => isPasswordVisible = !isPasswordVisible),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.grey, width: 2),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.blue, width: 2),
            )),
        obscureText: isPasswordVisible,
      );
}

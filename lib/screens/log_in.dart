import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkknfc/widgets/widgets.dart';

import 'home_personal.dart';
import 'reset_password.dart';

class Login extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {
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
                TitleText('Welcome!'),
                TagText('Log in to continue'),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Container(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.blue,
                        ),
                        onPressed: () {
                          Get.to(ResetPassword());
                        },
                        child: Text('Forgot Password?'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
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
                        Get.to(ViewPersonal());
                        print('Email: ${emailController.text}');
                        print('Password: $password');
                      },
                      child: Text('Log in'),
                    )),
                SizedBox(height: 20),
                Signupline('or log in with'),
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
                DontHaveAnAccount(),
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
          ),
        ),
        obscureText: isPasswordVisible,
      );
}

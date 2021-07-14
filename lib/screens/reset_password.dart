import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkknfc/widgets/widgets.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPassword createState() => _ResetPassword();
}

class _ResetPassword extends State<ResetPassword> {
  final emailController = TextEditingController();

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
                TitleText('Reset password'),
                TagText('Don\'t worry, happens to the best of us.'),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: buildEmail(),
                ),
                SizedBox(
                  height: 50,
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
                        Get.back();
                      },
                      child: Text('Email me a recovery link'),
                    )),
                SizedBox(
                  height: 250,
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
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget({
    Key? key,
    required this.text,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Text(text),
        onPressed: onClicked,
      );
}

class ButtonWidgetOutline extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidgetOutline({
    Key? key,
    required this.text,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => OutlinedButton(

        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        onPressed: onClicked,
        child: Text(text),
      );
}

class MyCustomButton extends StatelessWidget {
  const MyCustomButton(
      {Key? key,
        required this.lable,
        required this.onPress,
        required this.color,
        required this.radius,
        required this.borderColor,
        required this.lableColor,
        required this.buttonHeight,
        required this.buttonWidth,
      })
      : super(key: key);

  final String lable;
  final VoidCallback onPress;
  final Color color;
  final double radius,buttonHeight,buttonWidth;
  final Color borderColor,lableColor;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        elevation: 0,
        height: buttonHeight,
        minWidth: buttonWidth,

        color: color,
        padding: EdgeInsets.only(top: 16, bottom: 16),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
            side: BorderSide(
              color: borderColor,
            )),
        child: Center(
          child: Text(lable,
              style: TextStyle(
                fontFamily: 'Candara',
                color: lableColor,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              )),
        ),
        onPressed: onPress);
  }
}

Widget buildPersonalbutton() => ButtonWidget(
      text: 'Personal',
      onClicked: () {},
    );

Widget buildBusinessbutton() => ButtonWidgetOutline(
      text: 'Business',
      onClicked: () {},
    );
Widget buildDirectbutton() => ButtonWidgetOutline(
      text: '  Direct  ',
      onClicked: () {},
    );

Widget buildEditButton() => MyCustomButton(
  buttonHeight: 10,
  buttonWidth: Get.width/10,
  color: Colors.white,
  lableColor: Colors.blue,
  borderColor: Colors.grey.withOpacity(0.8),
  radius: 20,
  lable: '  Edit Profile  ',
  onPress: () {},
    );

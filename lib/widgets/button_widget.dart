import 'package:flutter/material.dart';

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

import 'package:flutter/material.dart';
import 'package:pbl/screens/register_page.dart';

class Buttons extends StatelessWidget {
  final Widget child;
  final ShapeBorder shape;
  final Color buttonColor;
  final Color textColor;
  final text;

  Buttons(
      {Key? key,
      required this.child,
      required this.shape,
      required this.buttonColor,
      required this.textColor,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        print("$text Button Pressed!");
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => RegisterPage()));
      },
      child: child,
      shape: shape,
      color: buttonColor,
      textColor: textColor,
      height: 50.0,
      minWidth: 150.0,
    );
  }
}

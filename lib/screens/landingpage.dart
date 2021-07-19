import 'package:flutter/material.dart';
import 'package:pbl/widgets/buttons.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  // final _loginButton = StadiumBorder(
  //     side: BorderSide(
  //         color: Colors.black, style: BorderStyle.solid, width: 20.0));
  final _loginButton = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
      side: BorderSide(
          color: Colors.black, style: BorderStyle.solid, width: 2.0));
  final _registerButton = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
      side: BorderSide(
          color: Colors.black, style: BorderStyle.solid, width: 2.0));
  final _textStyle = TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            child: Image.asset(
              "assets/me6.png",
              fit: BoxFit.fitHeight,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Buttons(
                    shape: _loginButton,
                    buttonColor: Colors.white,
                    textColor: Colors.black,
                    text: "Login",
                    child: Text(
                      "LOG IN",
                      style: _textStyle,
                    )),
                Buttons(
                    shape: _registerButton,
                    buttonColor: Colors.black,
                    textColor: Colors.white,
                    text: "Register",
                    child: Text(
                      "REGISTER",
                      style: _textStyle,
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}

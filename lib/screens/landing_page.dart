import 'package:flutter/material.dart';
import 'package:pbl/screens/login_page.dart';
import 'package:pbl/screens/signup_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Image.asset(
              "assets/me6.png",
              fit: BoxFit.contain,
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    elevation: 0,
                    color: Colors.white,
                    height: 50.0,
                    minWidth: 150.0,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black, width: 2.0),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Text(
                      "LOG IN",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  LogInPage(title: "Log In")));
                    },
                  ),
                  MaterialButton(
                    elevation: 0,
                    color: Colors.black,
                    height: 50.0,
                    minWidth: 150.0,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black, width: 2.0),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  SignUpPage(title: "Sign Up")));
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

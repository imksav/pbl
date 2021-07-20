import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pbl/screens/login_page.dart';
import 'package:pbl/widgets/social_icons.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.purple,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: const EdgeInsets.only(top: 70.0)),
                Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 42.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5.0),
                Text(
                  "Create your new account",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 2,
                  indent: 100,
                  endIndent: 100,
                ),
                Padding(padding: const EdgeInsets.symmetric(vertical: 15.0)),
                Container(
                  margin: const EdgeInsets.all(20.0),
                  child: Card(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              prefixIcon:
                                  Icon(Icons.person, color: Colors.black),
                              labelText: "Full Name",
                              hintText: "Enter your full name",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.verified_user_rounded,
                                color: Colors.black,
                              ),
                              labelText: "Username",
                              hintText: "Enter your unique username",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              prefixIcon:
                                  Icon(Icons.email, color: Colors.black),
                              labelText: "Email",
                              hintText: "Enter your email address",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock, color: Colors.black),
                              labelText: "Password",
                              hintText: "Enter your password",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                MaterialButton(
                  minWidth: 200.0,
                  height: 50.0,
                  color: Colors.blue[400],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28.0),
                    side: BorderSide(color: Colors.grey),
                  ),
                  onPressed: () {
                    print("Sign up button pressed!!!");
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account?",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                            ),
                          ),
                          SizedBox(width: 5.0),
                          GestureDetector(
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                  color: Colors.lime,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        LogInPage()),
                              );
                            },
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.all(8.0),
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                  child: Divider(
                                    color: Colors.grey,
                                    thickness: 1.5,
                                  ),
                                ),
                                SizedBox(width: 5.0),
                                Text(
                                  "OR",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 5.0),
                                Expanded(
                                  child: Divider(
                                    color: Colors.grey,
                                    thickness: 1.5,
                                  ),
                                ),
                              ],
                            ),
                            Padding(padding: const EdgeInsets.all(8.0)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SocialIcons(
                                  iconSrc: "assets/fb.svg",
                                  iconColor: Colors.blue,
                                  press: () {},
                                ),
                                SocialIcons(
                                  iconSrc: "assets/insta.svg",
                                  iconColor: Colors.red,
                                  press: () {},
                                ),
                                SocialIcons(
                                  iconSrc: "assets/google-plus.svg",
                                  iconColor: Colors.green,
                                  press: () {},
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

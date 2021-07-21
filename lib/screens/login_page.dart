import 'package:flutter/material.dart';
import 'package:pbl/screens/homepage.dart';
import 'package:pbl/screens/signup_page.dart';

class LogInPage extends StatefulWidget {
  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: const EdgeInsets.only(top: 70.0)),
              Text(
                "Login",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 42.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5.0),
              Text(
                "Login to your account",
                style: TextStyle(color: Colors.white, fontSize: 18.0),
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
                  elevation: 2,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email, color: Colors.black),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide(color: Colors.red),
                            ),
                            labelText: "Email",
                            hintText: "Enter your email address",
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock, color: Colors.black),
                            border: OutlineInputBorder(),
                            labelText: "Password",
                            hintText: "Enter your password",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                      color: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          side: BorderSide(color: Colors.white)),
                      child: Text("Log In",
                          style:
                              TextStyle(color: Colors.white, fontSize: 16.0)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => HomePage()));
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          side: BorderSide(color: Colors.white)),
                      child: Text("Reset",
                          style:
                              TextStyle(color: Colors.white, fontSize: 16.0)),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    GestureDetector(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.lime,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext contex) =>
                                    SignUpPage()));
                        print("Pressed Sign Up Link");
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

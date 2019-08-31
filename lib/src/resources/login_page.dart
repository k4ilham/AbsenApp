import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'register_page.dart';
import '../home/app_clock.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(0, 80, 0, 0),
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        constraints: BoxConstraints.expand(),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
//              SizedBox(
//                height: 140,
//              ),
              Image.asset(
                "list.png",
                height: 100,
                width: 100,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 6),
                child: Text(
                  "Welcome back!",
                  style: TextStyle(fontSize: 22.0, color: Color(0xff333333)),
                ),
              ),
              Text(
                "Login to continue using Attendance App",
                style: TextStyle(fontSize: 16, color: Color(0xff606470)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 125, 0, 20),
                child: TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                    labelText: "Email",
                    prefixIcon: Container(
                      width: 50,
                      child: Icon(Icons.email),
                    ),
                    border: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Color(0xffCED0D2), width: 1),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              TextField(
                style: TextStyle(fontSize: 18, color: Colors.black),
                decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: Container(
                    width: 50,
                    child: Icon(Icons.vpn_key),
                  ),

                  border: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Color(0xffCED0D2), width: 1),
                      borderRadius: BorderRadius.circular(10)),
                ),
                obscureText: true,
              ),
              Container(
                constraints: BoxConstraints.loose(Size(double.infinity, 30)),
                alignment: AlignmentDirectional.centerEnd,
                //child: Padding(
                //padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Text(
                  "Forget password?",
                  style: TextStyle(fontSize: 16, color: Color(0xff606470)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 40),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AppClock()),
                        );
                      },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    color: Colors.blue,
                    child: Text(
                      "Log In",
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 28),
                child: RichText(
                  text: TextSpan(
                    text: "New User ?",
                    style: TextStyle(color:Color(0xff606470),fontSize: 16),
                    children: <TextSpan>[
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                            ..onTap = (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => RegisterPage()));
                            },
                        text: "Sign up for a new account",
                        style: TextStyle(color: Colors.blue, fontSize: 16)
                      )
                    ]
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: content(),
    );
  }

  Widget content() {
    return Column(
      children: [
        Container(
          height: 250,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.tealAccent,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.elliptical(100, 100),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Image.asset("assets/logo1.png"),
          ),
        ),
        SizedBox(
          height: 60,
        ),
        inputStyle("Username", "Enter your username"),
        SizedBox(
          height: 20,
        ),
        inputStyle("Password", "Enter your password"),
        SizedBox(
          height: 60,
        ),
        Container(
          height: 60,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.tealAccent,
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  '/BotNavBar', (Route<dynamic> route) => false);
            },
            child: Text(
              "Login",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Don't have an account ?",
                style: TextStyle(fontSize: 17, color: Colors.black),
              ),
              TextSpan(
                  text: "Register",
                  style: TextStyle(
                      fontSize: 17, color: Color.fromARGB(255, 7, 87, 226)),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.of(context).pushNamed("/register");
                    }),
            ],
          ),
        )
      ],
    );
  }
}

Widget inputStyle(String title, String hinTxt) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(40, 5, 20, 10),
    child: Row(
      children: [
        Text(
          "$title :",
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3))
                ]),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 14),
                  hintText: hinTxt),
            ),
          ),
        ),
      ],
    ),
  );
}

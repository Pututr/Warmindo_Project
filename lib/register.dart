import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mini_projek/login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Image.asset("assets/logo2.png"),
              ),
              Text(
                "Register",
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 40,
        ),
        inputStyle("Username ", "user@gmail.com"),
        inputStyle("Password ", ""),
        inputStyle("Confirm Password ", ""),
        inputStyle("Location ", "Indonesia"),
        inputStyle("Identification Number ", "+62"),
        SizedBox(
          height: 30,
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
              "Registrasi",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
        ),
        SizedBox(
          height: 30,
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
              Navigator.of(context).pop();
            },
            child: Text(
              "Back to Login",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}

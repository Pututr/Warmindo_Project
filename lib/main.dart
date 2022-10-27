import 'package:flutter/material.dart';
import 'package:mini_projek/Home/home_page.dart';
import 'package:mini_projek/login.dart';
import 'package:mini_projek/register.dart';
import 'package:mini_projek/splash.dart';
import 'package:mini_projek/Home/botnavbar.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/": (context) => Splash(),
      '/login': (context) => Login(),
      '/register': (context) => Register(),
      '/BotNavBar': (context) => BotNavBar(),
    },
  ));
}

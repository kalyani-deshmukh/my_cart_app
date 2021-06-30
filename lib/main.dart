import 'package:flutter/material.dart';
import 'package:my_cart_app/pages/home_page.dart';
import 'package:my_cart_app/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: Homepage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/home",
      routes: {
        "/" : (context) => LoginPage(),
        "/home" : (context) => Homepage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}

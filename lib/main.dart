import 'package:flutter/material.dart';
import 'package:my_cart_app/pages/home_page.dart';
import 'package:my_cart_app/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_cart_app/utils/routes.dart';

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
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: MyRouts.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRouts.homeRoute: (context) => Homepage(),
        MyRouts.loginRoute: (context) => LoginPage(),
      },
    );
  }
}

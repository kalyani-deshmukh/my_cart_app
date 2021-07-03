import 'package:flutter/material.dart';
import 'package:my_cart_app/pages/home_page.dart';
import 'package:my_cart_app/pages/login_page.dart';
import 'package:my_cart_app/utils/routes.dart';
import 'package:my_cart_app/widgets/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: Homepage(),
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRouts.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRouts.homeRoute: (context) => Homepage(),
        MyRouts.loginRoute: (context) => LoginPage(),
      },
    );
  }
}

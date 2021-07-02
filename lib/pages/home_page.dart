import 'package:flutter/material.dart';
import 'package:my_cart_app/widgets/drawer.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to the Future kuDo!"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}

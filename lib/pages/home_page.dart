import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:my_cart_app/models/catalog.dart';
import 'package:my_cart_app/widgets/drawer.dart';
import 'package:my_cart_app/widgets/item_widget.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogJson = await rootBundle.loadString("asset/files/catalog.json");
    final decodeData = jsonDecode(catalogJson);
    var productsData = decodeData["products"];
    CatalogModel.items =
        List.from(productsData).map<Item>((item) => Item.fromMap(item)).toList();
    
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items!=null && CatalogModel.items.isNotEmpty)
        ? ListView.builder(
            itemCount: CatalogModel.items.length,
            itemBuilder: (context, index) => ItemWidget(
                item: CatalogModel.items[index],
              ),
  ):Center(
              child: CircularProgressIndicator(),
            ),
      ),
      drawer: MyDrawer(),
    );
  }
}

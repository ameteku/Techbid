import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tech_market/components/product_card.dart';
import 'package:tech_market/constants.dart';

class Home extends StatefulWidget {

  static const id = 'homemap';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,

        elevation: 20,
        toolbarHeight:100,
        backgroundColor: Colors.green,
        title: Text(kAppName),
      ),
      body: Container(
        child: Column(
          children: [
            ProductCard(
              criteria: 'Lowest Ask',
              imagePath: 'images/iphone-4333978_1920.png',
              price: 100.00,
              productName: 'Iphone 12',
            ),
            ProductCard(
              criteria: 'Lowest Ask',
              imagePath: 'images/iphone-4333978_1920.png',
              price: 100.00,
              productName: 'Iphone 12',
            ),
          ],
        ),
      )
    );
  }
}

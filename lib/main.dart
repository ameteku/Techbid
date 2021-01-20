import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/item_page.dart';
import 'screens/buyorBid.dart';
import 'screens/paymentConfirmation.dart';
import 'screens/search_page.dart';
import 'screens/sellingconfirmation.dart';
import 'screens/selloroffer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          color: Colors.green,
          elevation: 20,
        )
      ),
      initialRoute: Home.id,
      routes: {
        Home.id:(context)=> Home(),
        BuyPage.id:(context)=> BuyPage(),
        SellingPage.id: (context)=>SellingPage(),
        SellPage.id: (context)=>SellPage(),
        PaymentPage.id: (context)=>PaymentPage(),
        SearchPage.id: (context)=> SearchPage(),
        productPage.id: (context)=> productPage()
      },
    );
  }
}


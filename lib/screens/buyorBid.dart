import 'package:flutter/material.dart';
import 'package:tech_market/constants.dart';
import 'package:tech_market/components/VariantCard.dart';


class BuyPage extends StatefulWidget {
  static const id = 'Buy';
  @override
  _BuyPageState createState() => _BuyPageState();
}

class _BuyPageState extends State<BuyPage> {
  bool buyyet = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(kAppName),
      ),
      body:buyyet ? BuyingSection(): ListView(
        children: [
          Image(
            height: 200,
            image: AssetImage('images/iphone-4333978_1920.png'),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              VariantCard(
                price: 2000,
                variant: '128GB',
              ),
                  VariantCard(
              price: 1200,
              variant: '32GB',
                  ),
                  VariantCard(
              price: 1500,
              variant: '64GB',
                  ),
              VariantCard(
                price: 2000,
                variant: '128GB',
              ),
              VariantCard(
                price: 1200,
                variant: '32GB',
              ),
              VariantCard(
                price: 1500,
                variant: '64GB',
              ),
              VariantCard(
                price: 2000,
                variant: '128GB',
              ),
              VariantCard(
                price: 1200,
                variant: '32GB',
              ),
              VariantCard(
                price: 1500,
                variant: '64GB',
              ),
            ],
          )
        ],
      ),
    );
  }
}



class BuyingSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
        child: Column(
          children: [
            Container(
              child: Card(),
            ),
            Container(
              child: Card(
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children : [
                          Text('Bid'),
                          Text('Buy'),
                        ]),),
                    TextField(
                    ),


                  ],
                ),

            ),
            )
          ],
        ),

    );
  }
}

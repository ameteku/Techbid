import 'package:flutter/material.dart';
import 'package:tech_market/constants.dart';
import 'package:tech_market/screens/buyorBid.dart';


class BuyNSellButton extends StatelessWidget {
  final String criteria;
  final double price;
  final String bOrS;



  BuyNSellButton({@required this.price, @required this.criteria,  @required this.bOrS});
  @override
  Widget build(BuildContext context) {
    return  RawMaterialButton(
      splashColor: Colors.green,
      onPressed: (){
        Navigator.push(context,
            MaterialPageRoute(
                builder: (context)=>BuyPage())
        );
      },
      child: Card(
        color: Colors.white60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 35,
              margin: EdgeInsets.symmetric(vertical: 30,horizontal: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(criteria ?? 'Highest Bid' ,
                  style: kProducttitle,),
                  Text('\$$price' ?? '\$700',
                  style: kMoneytext,)
                ],
              ),
            ),
            /*SizedBox(
              height: 10,
              width: 20,
            ),*/
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text( criteria=='Lowest Ask' ? 'Sell': 'Buy',
                  textAlign: TextAlign.left,
                  style: kProducttitle,),
                  Text(criteria=='Lowest Ask' ? 'Offer': 'Bid',
                    textAlign: TextAlign.left,
                    style: kOrAsk,),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}

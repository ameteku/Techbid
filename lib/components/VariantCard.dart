import 'package:flutter/material.dart';
import 'package:tech_market/constants.dart';


class VariantCard extends StatelessWidget {
  final String variant;
  final double price;

  VariantCard({this.price, this.variant});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 70,
        child: RawMaterialButton(
          onPressed: (){

          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(variant ??'32GB',
                style: kProducttitle.copyWith(
                    fontSize: 25
                ),),
              Text(price.toString() ?? '\$2000', style: kMoneytext,),
            ],
          ),
        ),
      ),
    );
  }
}
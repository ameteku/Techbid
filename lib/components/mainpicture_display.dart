import 'package:flutter/material.dart';
import 'package:tech_market/constants.dart';
import 'product_card.dart';


class MainPictureDisplay extends StatelessWidget {
  final String mainImagePath;
  final String altImagePath;
  final String secAltImagePath;
  String activeimg;

  MainPictureDisplay({this.altImagePath,this.mainImagePath,this.secAltImagePath});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: imageCard(
              imagePath:activeimg ?? mainImagePath ?? 'images/iphone-4333978_1920.png',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RawMaterialButton(
                onPressed: (){

                },
                child: imageCard(
                  //child: Image(
                      height: 40,
                      width: 60,
                      imagePath:mainImagePath ?? 'images/blueiphone.jpg'),
              ),
              RawMaterialButton(
                onPressed: (){

                },
                child: imageCard(
                  //child: Image(
                    height: 40,
                    width: 60,
                    imagePath:altImagePath ?? 'images/blueiphone.jpg'),
              ),
              RawMaterialButton(
                onPressed: (){

                },
                child: imageCard(
                  //child: Image(
                    height: 40,
                    width: 60,
                    imagePath:secAltImagePath ?? 'images/blueiphone.jpg'),
              ),

      ]
          ),
          Text('Condition: New',
          textAlign: TextAlign.center,
            style: kProducttitle.copyWith(
              fontWeight: FontWeight.w300
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Last Sale',
              textAlign: TextAlign.center,
              style: kProducttitle.copyWith(
                fontSize: 20
              ),),
              Text(
                  ' \$900.00',
                style: kProducttitle.copyWith(
                    fontSize: 35
                ),
              )
            ],
          ),
          imageCard(
            imagePath: 'images/samplegraph.PNG',
          )
        ],
      ),
    );
  }
}



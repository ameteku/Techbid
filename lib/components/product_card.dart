import 'package:flutter/material.dart';
import 'package:tech_market/screens/item_page.dart';



class ProductCard extends StatelessWidget {

  final padding;
  final String imagePath;
  final String productName;
  final String criteria;
  final double price;
  final TextStyle txtstyle;

  ProductCard({this.criteria,this.imagePath,this.padding, this.price, @required this.productName, this.txtstyle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:20.0, horizontal: 10.0),
      child: RawMaterialButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(
              builder: (context)=>productPage()));
        },
        child: Material(
          textStyle: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w900,
            color: Colors.black,
          ) ?? txtstyle,
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
          elevation: 8,
          child: Column(
              children: [
                Image( // for small images of products
                  height: 150,
                  width: 150,
                  image: AssetImage(imagePath ?? ''),
                ),
                Text(productName ?? 'Iphone 12'), //the product anme
                Text(criteria ?? 'Lowest Ask'),// for the criteria used for the money
                Text('\$ $price'), //prices

              ],
            ),
        ),
      ),
    );
  }
}


class imageCard extends StatelessWidget {
  final double height;
  final double width;
  final String imagePath;
  final margin;

  imageCard({this.imagePath, this.height, this.margin,this.width});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.2,
      margin: EdgeInsets.all(margin ?? 20.0),
      child: Image(
        height: height ?? 400,
        width: width ?? 352,
        image: AssetImage(imagePath ?? 'images/blueiphone.jpg'),
      ),
    );
  }
}
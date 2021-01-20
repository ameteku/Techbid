import 'package:flutter/material.dart';
import 'package:tech_market/components/BuynSellButton.dart';
import 'package:tech_market/components/mainpicture_display.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:tech_market/constants.dart';


class productPage extends StatefulWidget {
  static const id = "product";
  @override
  _productPageState createState() => _productPageState();
}

class _productPageState extends State<productPage> {
  LineChartData dat = LineChartData(


  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(kAppName),
      ),
      body: ListView(
        children: [
          Row( // for buy and sell button
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Expanded(child: SizeSelect()),
              BuyNSellButton(
                bOrS: 'Buy',
                price: 3000.00,
                criteria: 'Lowest Ask' ,

              ),
              BuyNSellButton(
                bOrS: 'Sell',
                price: 2500.00,
                criteria: 'Highest Bid' ,

              ),
            ]),
          MainPictureDisplay(),

         /* LineChart(
            LineChartData(
              backgroundColor: Colors.brown,
                minX: 10,
                minY: 20,
                maxX: 31,
                maxY: 5000,
              lineBarsData: [
                LineChartBarData(
                  show: true,


                )
              ]
            ),



          )*/


      ]

      )

        /*SfCartesianChart(

            primaryXAxis: CategoryAxis(),
            // Chart title
            title: ChartTitle(text: 'Half yearly sales analysis'),
            // Enable legend
            legend: Legend(isVisible: true),
            // Enable tooltip
            tooltipBehavior: TooltipBehavior(enable: true),

            series: <LineSeries<SalesData, String>>[
              LineSeries<SalesData, String>(
                  dataSource:  <SalesData>[
                    SalesData('Jan', 35),
                    SalesData('Feb', 28),
                    SalesData('Mar', 34),
                    SalesData('Apr', 32),
                    SalesData('May', 40)
                  ],
                  xValueMapper: (SalesData sales, _) => sales.year,
                  yValueMapper: (SalesData sales, _) => sales.sales,
                  // Enable data label
                  dataLabelSettings: DataLabelSettings(isVisible: true)
              )
            ]
        )*/

    );
  }
}

class SizeSelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text('Size', style: kProducttitle,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('All',
              style: kMoneytext.copyWith(
                color: Colors.blue,
                fontSize: 20
              ),),
              IconButton(
                onPressed: (){
                  
                },
                icon: Icon(Icons.arrow_drop_down),
                padding: EdgeInsets.only(left: 0),
              )
            ],
          )

    ]
    );
  }
}



import 'package:flutter/material.dart';
import 'package:flutter_swipable/flutter_swipable.dart';

final List data = [
  {
    'restaurantWidget': Colors.red, //add more info here
  },
  {
    'restaurantWidget': Colors.green, 
  }
  //add more here but update List<Card> indeces
];

class RNDR extends StatefulWidget {
  const RNDR({ Key? key }) : super(key: key);

  @override
  _RNDRState createState() => _RNDRState();
}

class _RNDRState extends State<RNDR> {
  List<Card> cards = [
    Card(
      data[0]['restaurantWidget'],
    ),
    Card(
      data[1]['restaurantWidget'],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width *0.9,
      height: MediaQuery.of(context).size.height *0.7,
      child: Stack(
        children: cards,
        )
    );
  }
}

class Card extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);
  final Color color;
  Card(this.color);
  @override
  Widget build(BuildContext context) {
    return Swipable(
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular
        (16.0,
        ),
        color: color,
        )
        )

        //onSwipeRight:
    );
  }
}
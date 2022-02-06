import 'package:flutter/material.dart';
import 'package:flutter_swipable/flutter_swipable.dart';
import 'test.dart';
import 'confirmation_widget.dart';


class RNDRWidget extends StatefulWidget {
  const RNDRWidget({Key key}) : super(key: key);

  @override
  _RNDRState createState() => _RNDRState();
}

final List data = [
  {
    'restaurantWidget': Colors.red, //add more info here
    'image': urls[0],
    'name': "Coffee Time",
  },
  {
    'restaurantWidget': Colors.green,
    'image': urls[1],
  },
  {
    'restaurantWidget': Colors.green,
    'image': urls[2],
  },
  {
    'restaurantWidget': Colors.green,
    'image': urls[3],
  },
  {
    'restaurantWidget': Colors.green,
    'image': urls[4],
  },
  {
    'restaurantWidget': Colors.green,
    'image': urls[5],
  },
  {
    'restaurantWidget': Colors.green,
    'image': urls[6],
  },
  {
    'restaurantWidget': Colors.green,
    'image': urls[7],
  },
  {
    'restaurantWidget': Colors.green,
    'image': urls[8],
  },
  {
    'restaurantWidget': Colors.green,
    'image': urls[9],
  },
  //add more here but update List<Card> indeces
];

class RNDR extends StatefulWidget {
  //const RNDR({Key? key}) : super(key: key);

  @override
  _RNDRState createState() => _RNDRState();
}

class _RNDRState extends State<RNDRWidget> {
  List<Card> cards = [
    Card(
      data[0]['image'],
    ),
    Card(
      data[1]['image'],
    ),
    Card(
      data[2]['image'],
    ),
    Card(
      data[3]['image'],
    ),
    Card(
      data[4]['image'],
    ),
    Card(
      data[5]['image'],
    ),
    Card(
      data[6]['image'],
    ),
    Card(
      data[7]['image'],
    ),
    Card(
      data[8]['image'],
    ),
    Card(
      data[9]['image'],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.7,
        color: Colors.white,
        child: Stack(
          children: cards,
        ));
  }
}

class Card extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);
  final String color;
  Card(this.color);
  @override
  Widget build(BuildContext context) {
    return Swipable(
      //child: Container(
      child: SafeArea(
          key: key,
          left: true,
          top: true,
          right: true,
          bottom: true,
          minimum: EdgeInsets.zero,
          maintainBottomViewPadding: false,
          child: Align(
            alignment: Alignment.center,
            child: Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(color),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(26)))),
          )),

      onSwipeRight: (finalPosition) async {
        await Navigator.push(
        context,
        MaterialPageRoute(
        builder: (context) => ConfirmationWidget(),
        ));
      },
    );
  }
}

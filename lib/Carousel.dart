import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gamestop_dribble/carousel/ff_carousel.dart';
import 'package:gamestop_dribble/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class Carousel extends StatefulWidget {
  Carousel({Key key}) : super(key: key);

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      color: Colors.green,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          ff_carousel(),
          Column(
            children: <Widget>[
              Text("VIEW2"),
              Text("VIEW2_Sub")
            ],
          )
      ],),
    );
  }
}
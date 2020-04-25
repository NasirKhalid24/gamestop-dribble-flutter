import 'package:flutter/material.dart';
import 'package:gamestop_dribble/colors.dart';
import 'package:google_fonts/google_fonts.dart';

import 'cards/CustomCard.dart';

class GameCarousel extends StatelessWidget {
  const GameCarousel({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Row(children: <Widget>[
                Text("New", style: GoogleFonts.barlow(height: 1, color: text, fontSize: 24, fontStyle: FontStyle.italic, fontWeight: FontWeight.w900)),
                Icon(Icons.arrow_drop_down, color: text)
              ],),
              Text("View All", style: GoogleFonts.barlow(height: 2.2, decoration: TextDecoration.underline, color: extra_text, fontSize: 12, fontStyle: FontStyle.italic, fontWeight: FontWeight.w800))
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20, bottom: 20, left: 10),
          width: double.infinity,
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              CustomCard(url:'assets/images/cod.jpg', number:1, color:pink),
              CustomCard(url:'assets/images/botw.jpg', number:2, color:Color(0xFFed744b)),
              CustomCard(url:'assets/images/sottr.png', number:3, color:Color(0xFFf1ba44)),
              CustomCard(url:'assets/images/iss.jpg', number:4, color:Color(0xFFf1ba44))
            ]
          ),
        )
      ],
    );
  }
}
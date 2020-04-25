import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class GamePost extends StatelessWidget {
  const GamePost({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Row(children: <Widget>[
                  Text("Game", style: GoogleFonts.barlow(height: 1, color: text, fontSize: 24, fontStyle: FontStyle.italic, fontWeight: FontWeight.w900)),
                  Text(" "),
                  Text("Post", style: GoogleFonts.barlow(height: 1, color: text, fontSize: 24, fontStyle: FontStyle.italic, fontWeight: FontWeight.w500)),
                ],),
                Text("View All", style: GoogleFonts.barlow(height: 2.2, decoration: TextDecoration.underline, color: extra_text, fontSize: 12, fontStyle: FontStyle.italic, fontWeight: FontWeight.w800))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Material(
              color: Color(0x00FFFFFF),
              elevation: 20,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20)
                ),
                width: double.infinity,
                height: 80,
                child: Stack(
                  overflow: Overflow.clip,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(
                        image: AssetImage('assets/images/ff_banner.jpg'),
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                        ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [blue, Color(0x00FFFFFF), Color(0x00FFFFFF)], begin: Alignment.centerRight, end: Alignment.centerLeft),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text("", style: TextStyle(fontSize: 7),),
                            Text("FINAL FANTASY.VII REMAKE", textAlign: TextAlign.end, style: GoogleFonts.barlow(fontSize: 13, color: Colors.white, fontStyle: FontStyle.italic, fontWeight: FontWeight.w900)),
                            Text("Once more a story begins that will shape the destiny \nof an entire world", textAlign: TextAlign.end, style: GoogleFonts.barlow(fontSize: 8, color: Colors.white, fontStyle: FontStyle.italic, fontWeight: FontWeight.w600)),
                            Text("USD 59.99", textAlign: TextAlign.end, style: GoogleFonts.barlow(fontSize: 16, color: pink, fontStyle: FontStyle.italic, fontWeight: FontWeight.w900)),
                            ]
                          ),
                      ),
                      ),
                  ]
                ),
              ),
            ),
          )
        ]
      ),
    );
  }
}
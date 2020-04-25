import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors.dart';

class mario_carousel extends StatelessWidget {
  const mario_carousel({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              height: 96,
              width: MediaQuery.of(context).size.width,
              color: pink,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 32),
                child: RichText(
                  text: TextSpan(
                    style: GoogleFonts.barlow(
                      color: background,
                      fontWeight: FontWeight.w900,
                      fontSize: 20.0,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'SUPER MARIO\n'),
                      TextSpan(text: 'ODYSSEY')
                    ]
                  ),
                ),
              ),
            ),
            Container(
              height: 134,
              width: MediaQuery.of(context).size.width,
              color: blue,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 70),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Transform(
                      transform: Matrix4.skewX(-0.1),
                      child: Container(
                      margin: EdgeInsets.only(right: 10),
                      height: 27,
                      width: 43,
                      color: text,
                      child: Transform(transform:  Matrix4.skewX(0.1), child: Icon(Icons.star_border, color: background))
                      ),
                    ),
                    Text("IS GOTY", style: GoogleFonts.barlow(height: 0.0, color: text, fontSize: 38, fontStyle: FontStyle.italic, fontWeight: FontWeight.w900))
                  ]
                ),
              )
            ),
          ],
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Image(
            height: 230.0,
            alignment: Alignment.centerRight,
            image: AssetImage('assets/images/mario.png'),
            fit: BoxFit.fill
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
          height: 40,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.bottomCenter, end: Alignment.topCenter, colors: <Color>[blue, blue_faded])
          ),
          ),
        ),
      ]),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors.dart';

class ff_carousel extends StatelessWidget {
  const ff_carousel({Key key}) : super(key: key);

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
              color: blue,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 32),
                child: RichText(
                  text: TextSpan(
                    style: GoogleFonts.barlow(
                      color: text,
                      fontWeight: FontWeight.w900,
                      fontSize: 20.0,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'FINAL FANTASY.VII\n'),
                      TextSpan(text: 'REMAKE', style:GoogleFonts.barlow(fontWeight: FontWeight.bold, fontSize: 12.0))
                    ]
                  ),
                ),
              ),
            ),
            Container(
              height: 134,
              width: MediaQuery.of(context).size.width,
              color: pink,
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
                      color: background,
                      child: Transform(transform:  Matrix4.skewX(0.1), child: Icon(Icons.star_border, color: pink))
                      ),
                    ),
                    Text("IS COMING", style: GoogleFonts.barlow(height: 0.0, color: Colors.white, fontSize: 38, fontStyle: FontStyle.italic, fontWeight: FontWeight.w900))
                  ]
                ),
              )
            ),
          ],
        ),
        Positioned(
          bottom: 0,
          right: -40,
          child: Image(
            height: 230.0,
            alignment: Alignment.centerRight,
            image: AssetImage('assets/images/cloud.png'),
            fit: BoxFit.fill
          ),
        ),
      ]),
    );
  }
}

class customClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size){

    final path = Path()
      ..lineTo(0, size.width); 

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
} 
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Game.dart';
import 'colors.dart';

class ActivePage extends StatelessWidget {
  const ActivePage({Key key, this.game}) : super(key: key);

  final Game game;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 20,
              offset: Offset(10, 2),
            )
          ]
        ),
        margin: EdgeInsets.only(left: 20, bottom: 16),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image(alignment: Alignment.topCenter, height: double.infinity, width: double.infinity, image: AssetImage(game.url), fit: BoxFit.cover,)
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
                child: Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 80,
                  color: acccent,
                  child: Text('${game.completion.toString()}%', style: GoogleFonts.barlow(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w800),)
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
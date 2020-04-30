import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Game.dart';
import 'colors.dart';

class InactivePage extends StatelessWidget {
  const InactivePage({Key key, this.game}) : super(key: key);

  final Game game;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 7,
            offset: Offset(10, 7),
          )
        ]
      ),
      margin: EdgeInsets.only(left: 20, bottom: 16),
      child: Column(
        children: <Widget>[
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(alignment: Alignment.topCenter, height: 230, width: double.infinity, image: AssetImage(game.url), fit: BoxFit.cover,)
              ),
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 10), child: Text(game.title, style: GoogleFonts.barlow(fontSize: 14, fontStyle: FontStyle.italic, color: text, fontWeight: FontWeight.w800)))
        ]
      ),
    );
  }
}
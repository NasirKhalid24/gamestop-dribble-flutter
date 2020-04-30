import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gamestop_dribble/screens/Library.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class Header extends StatelessWidget {
  const Header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      style: GoogleFonts.barlow(
                        color: text,
                        fontWeight: FontWeight.w900,
                        fontSize: 20.0,
                      ),
                      children: <TextSpan>[
                        TextSpan(text: 'GAME'),
                        TextSpan(text: ' ', style: TextStyle(fontSize: 10)),
                        TextSpan(text: 'STOP', style: TextStyle(color: acccent))
                      ]
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 28.0),
                        child: Icon(Icons.search),
                      ),
                      IconButton(icon: Icon(Icons.filter_list), onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Library()));
                      }
                      )
                    ],
                  ),
                ],
              ),
            );
  }
}
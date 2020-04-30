import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class LibraryHeader extends StatelessWidget {
  const LibraryHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 25, bottom: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Library", style: GoogleFonts.barlow(color: text, fontSize: 26, fontWeight: FontWeight.w900),),
              Icon(Icons.search) 
          ],
        ),
      ),
    );
  }
}
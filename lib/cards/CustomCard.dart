import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCard extends StatelessWidget {
  final String url;
  final int number;
  final Color color;

  CustomCard({@required this.url, @required this.number, @required this.color});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      width: 140,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          overflow: Overflow.clip,
          children: <Widget>[
            Container(
              child: Image(
                image: AssetImage(url),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
              ),
            ),
            Transform.translate(
              offset: Offset(-22, -7),
              child: Transform.rotate(
                angle: -0.8,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: color
                  ),
                  width: 45,
                  height: 48,
                  child: Text(''),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(10, 3),
              child: Text(number.toString(), style: GoogleFonts.barlow(fontSize: 20, color: Colors.white, fontStyle: FontStyle.italic, fontWeight: FontWeight.w900))
            )
          ],
        ),
      ),
    );
  }
}
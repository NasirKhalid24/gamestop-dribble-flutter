import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import 'Game.dart';
import 'colors.dart';
import 'list_of_games.dart';

class GameList extends StatefulWidget {
  GameList({Key key, this.filtered_games}) : super(key: key);

  final List<Game> filtered_games;
  @override
  _GameListState createState() => _GameListState();
}

class _GameListState extends State<GameList> {

  final f = new DateFormat.yMMMMd("en_US");
  
  @override
  Widget build(BuildContext context) {
    return widget.filtered_games.length == 0 ? Container() : Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      width: double.infinity,
      height: 210,
      child: ListView.builder(
        itemCount: widget.filtered_games.length,
        itemBuilder: (context, index){
            return Container(
              height: 140,
              margin: EdgeInsets.only(bottom: 10),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 7,
                          offset: Offset(0, 4)
                        )
                      ]
                    ),
                    width: 90,
                    height: 120 ,
                    child: ClipRRect(borderRadius: BorderRadius.circular(10),child: Image(image: AssetImage(widget.filtered_games[index].url), fit: BoxFit.cover,)),
                  ),
                  SizedBox(width: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(widget.filtered_games[index].title, style: GoogleFonts.barlow(fontSize: 18, color: text, fontWeight: FontWeight.w800)),
                      Text(f.format(DateTime(widget.filtered_games[index].year, widget.filtered_games[index].month, widget.filtered_games[index].date)).toString(), style: GoogleFonts.barlow(fontSize: 14, color: Colors.black38, fontWeight: FontWeight.w400)),
                      Row(
                        children: widget.filtered_games[index].genres.map((item) => Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: new Chip(shape: StadiumBorder(side: BorderSide(width: 0.3, color: Colors.pink)),backgroundColor: background,label: Text(item), labelStyle: GoogleFonts.barlow(color: Colors.pink, fontWeight: FontWeight.w500, fontSize: 14),),
                        )).toList()
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            width: 160,
                            height: 10,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                              child: LinearProgressIndicator(
                                backgroundColor: Color.fromARGB(255, 237, 237, 237),
                                valueColor: AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 93, 98, 125)),
                                value: widget.filtered_games[index].completion / 100.0
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text('${widget.filtered_games[index].completion}%', style: TextStyle(fontFamily: 'Sui-Generis', color: Color.fromARGB(255, 104, 109, 135)))
                        ]
                      )
                    ]
                  )
                ],
              )
            );
          }
      ),
    );
  }
}


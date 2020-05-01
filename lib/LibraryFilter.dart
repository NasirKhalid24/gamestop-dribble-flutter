import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Game.dart';
import 'GameList.dart';
import 'list_of_games.dart';

class LibraryFilter extends StatefulWidget {
  LibraryFilter({Key key}) : super(key: key);

  @override
  _LibraryFilterState createState() => _LibraryFilterState();
}

class _LibraryFilterState extends State<LibraryFilter> {
  String _selected = "All";
  List<String> genres = ["All", "FPS", "RPG", "ARPG", "TPS", "ACTION"];
  List<Game> filtered_games;

  @override
  void initState() {
    super.initState();
    filtered_games = FilterGames(_selected);
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Color.fromARGB(40, 130, 130, 130),
              ),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: genres.length,
                itemBuilder: (context, index){
                  if(_selected == genres[index]){
                    return RaisedButton(
                      elevation: 0,
                      onPressed: () => {setState((){_selected = genres[index]; filtered_games = FilterGames(genres[index]);})},
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 7,
                              offset: Offset(0, 7)
                            )
                          ],
                          borderRadius: BorderRadius.circular(8)
                        ),
                        alignment: Alignment.center,
                        width: 70,
                        height: 25,
                        
                        child: Text(genres[index], style: GoogleFonts.barlow(fontWeight: FontWeight.w700),),
                      )
                    );
                  }else{
                    return FlatButton(splashColor: Colors.transparent, onPressed: () => {setState((){_selected = genres[index]; filtered_games = FilterGames(genres[index]);})}, child: Text(genres[index], style: GoogleFonts.barlow(color: Color.fromARGB(100, 0, 0, 0))));
                  }
                },
              ),
            ),
          ),
        ),
      SizedBox(height: 10),
      GameList(filtered_games: filtered_games)
      ]
    );
  }
}

List<Game> FilterGames(genre) {
  List<Game> output = [];

  for(var g in games){
    if(g.genres.contains(genre) || genre == "All"){
      output.add(g);
    }
  }
  return output;
}
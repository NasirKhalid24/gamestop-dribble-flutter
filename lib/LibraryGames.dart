import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'ActivePage.dart';
import 'InactivePage.dart';
import 'list_of_games.dart';

class LibraryGames extends StatefulWidget {
  LibraryGames({Key key}) : super(key: key);

  @override
  _LibraryGamesState createState() => _LibraryGamesState();
}

class _LibraryGamesState extends State<LibraryGames> {

  int currentPage = 0;
  PageController ctrl = PageController(viewportFraction: 0.6);

  @override
  void initState() {
    ctrl.addListener((){
      print(ctrl.offset);

      if(ctrl.offset > 0){
        setState(() {
          currentPage = (ctrl.offset/180).floor();
        });
      }else{
        setState(() {
          currentPage = 0;
        });
      }
    });
    super.initState();
  }
  @override
  void dispose() {
    ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      alignment: Alignment.centerLeft,
      width: double.infinity,
      height: 280,
      child: ListView.builder(
        padding: EdgeInsets.only(right: 180),
        scrollDirection: Axis.horizontal,
        controller: ctrl,
        itemCount: games.length,
        itemBuilder: (context, index){
          if(currentPage == index){
            return AnimatedSwitcher(
              duration: Duration(milliseconds: 100),
              child: ActivePage(game: games[index]),
            );
          }else{
            return AnimatedSwitcher(
              duration: Duration(milliseconds: 200),
              child: InactivePage(game: games[index]));
          }
        },
      ),
    );
  }

  void changePage(int value) {
    setState(() {
      currentPage = value;
    });
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'ActivePage.dart';
import 'Game.dart';
import 'InactivePage.dart';

class LibraryGames extends StatefulWidget {
  LibraryGames({Key key}) : super(key: key);

  @override
  _LibraryGamesState createState() => _LibraryGamesState();
}

class _LibraryGamesState extends State<LibraryGames> {

  int currentPage = 0;
  PageController ctrl = PageController(viewportFraction: 0.6);
  List<Game> games = [
    Game('assets/images/ow.jpg', 'Overwatch', 2, 4, 2019, 42, ['FPS', 'ACTION']),
    Game('assets/images/w.jpg', 'The Witcher 3', 12, 8, 2019, 20, ['RPG', 'ARPG']),
    Game('assets/images/wy.png', 'Wolfenstein: Youngblood', 26, 7, 2019, 62, ['FPS', 'ACTION']),
    Game('assets/images/d2.jpg', 'Destiny 2', 6, 9, 2019, 87, ['ACTION', 'FPS', 'RPG']),
  ];

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
      print(currentPage);
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
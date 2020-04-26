import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gamestop_dribble/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

import '../Carousel.dart';
import '../GameCarousel.dart';
import '../GamePost.dart';
import '../Header.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>{

  var positions = <double>[42.0, 135.5, 229.0, 323.0];
  var start = 0;
  var end = 0;
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Header(),
              Carousel(),
              GameCarousel(),
              GamePost()
            ]),
        ),
      ),
      bottomNavigationBar: Stack(
        children: <Widget>[
          BottomNavigationBar(
            onTap: moveBlip,
                        type: BottomNavigationBarType.fixed,
                        showSelectedLabels: false,
                        showUnselectedLabels: false,
                        items: [
                          BottomNavigationBarItem(
                            icon: Icon(OMIcons.home, color: acccent),
                            title: Text("Home Page"),
                            backgroundColor: Colors.black
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(OMIcons.bookmarkBorder, color: acccent),
                            title: Text("Bookmark"),
                            backgroundColor: Colors.black
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(OMIcons.shoppingCart, color: acccent),
                            title: Text("Shopping Cart"),
                            backgroundColor: Colors.black
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(Icons.person_outline, color: acccent),
                            title: Text("User"),
                            backgroundColor: Colors.black
                          )
                        ]
                      ),
                      TweenAnimationBuilder(
                        onEnd: animationended,
                        duration: Duration(milliseconds: 200),
                        tween: Tween<double>(begin: positions[start], end: positions[end]),
                        builder: (_, double pos, __){
                          return Transform.translate(
                          offset: Offset(pos, 50),
                          child: Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: acccent,
                              borderRadius: BorderRadius.only(
                                topLeft: const Radius.circular(60.0),
                                topRight: const Radius.circular(60.0),
                              )
                            ),
                          ),
                        );
                        },
                      ),
                      Transform.translate(
                        offset: Offset(0, 56),
                        child: Container(
                          color: Colors.white,
                          width: double.infinity,
                          height: 20,
                        ),
                      )
                    ]   
                  ),
                );
              }
            
  void moveBlip(int value) {
    setState(() {
      end = value;
    });
  }

  void animationended() {
    setState(() {
      start = end;
    });
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gamestop_dribble/carousel/ff_carousel.dart';
import 'package:gamestop_dribble/colors.dart';

import 'carousel/doom_carousel.dart';
import 'carousel/mario_carousel.dart';

class Carousel extends StatefulWidget {
  Carousel({Key key}) : super(key: key);

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {

  static const carousel_pages = [ff_carousel(), mario_carousel(), doom_carousel()];
  var page_numbers = carousel_pages.map((item) => new Container(width: 30, height: 8, decoration: BoxDecoration(color: Colors.transparent, border: Border.all(color: background)),)).toList();
  var _currentpage = 0;

  @override
  initState() {
  super.initState();
    page_numbers[_currentpage] = new Container(width: 30, height: 8, decoration: BoxDecoration(color: background, border: Border.all(color: background)));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      color: background,
      child: Stack(
        children: <Widget>[
          PageView(
            onPageChanged: changePage,
            scrollDirection: Axis.horizontal,
            children: carousel_pages,
        ),
        Positioned(
          bottom: 30,
          left: 20,
          child: Container(
            height: 10,
            width: 120,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: page_numbers
            ),
          ),
        )
      ])
    );
  }

  void changePage(int value) {
    setState(() { _currentpage = value; });
    page_numbers = carousel_pages.map((item) => new Container(width: 30, height: 8, decoration: BoxDecoration(color: Colors.transparent, border: Border.all(color: background)),)).toList();
    page_numbers[_currentpage] = new Container(width: 30, height: 8, decoration: BoxDecoration(color: background, border: Border.all(color: background)));
  }
}
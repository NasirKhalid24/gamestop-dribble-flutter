import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gamestop_dribble/colors.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Carousel.dart';
import '../Header.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Header(),
            Carousel()
          ]),
      )
    );
  }
}
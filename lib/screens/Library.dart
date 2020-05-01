import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../LibraryFilter.dart';
import '../LibraryGames.dart';
import '../LibraryHeader.dart';


class Library extends StatefulWidget {
  Library({Key key}) : super(key: key);

  @override
  _LibraryState createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              LibraryHeader(),
              LibraryGames(),
              LibraryFilter(),
            ]),
        ),
      )
    );
  }
}
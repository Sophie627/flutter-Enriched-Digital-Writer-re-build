/*
    class HeadingText extends StatefulWidget
    Author: Sophie(bolesalavb@gmail.com)
    Created Date & Time:  Aug 18 2020 8:04 PM

    Class: HeadingText
    Description:  Text Widget with Header style
                  txt(String) - content of header text
   */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeadingText extends StatefulWidget {
  final String txt;

  HeadingText({this.txt});

  _HeadingTextState createState() => _HeadingTextState();
}

class _HeadingTextState extends State<HeadingText> {

  @override
  Widget build(BuildContext context) {
    return Text(widget.txt,
      style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
      ),
    );
  }

}

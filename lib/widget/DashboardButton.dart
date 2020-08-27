/*
    Class DashboardButton(String txt)
    Author: Sophie(bolesalavb@gmail.com)
    Created Date & Time:  Aug 27 2020 5:24 PM
   */

import 'package:flutter/material.dart';

class DashboardButton extends StatefulWidget {
  final String txt;
  final Function onPress;

  DashboardButton({this.txt, this.onPress});

  _DashboardButtonState createState() => _DashboardButtonState();
}

class _DashboardButtonState extends State<DashboardButton> {
  Widget build(BuildContext context) {
    return FlatButton(
      color: Theme
          .of(context)
          .primaryColor,
      textColor: Colors.black,
      hoverColor: Colors.white,
      disabledColor: Colors.grey,
      disabledTextColor: Colors.black,
      padding: EdgeInsets.all(8.0),
      splashColor: Colors.grey,
      onPressed: widget.onPress,
      child: Text(
        widget.txt,
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }
}
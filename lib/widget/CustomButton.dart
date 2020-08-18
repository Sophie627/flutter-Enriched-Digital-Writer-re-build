/*
    class CustomButton extends StatefulWidget
    Author: Sophie(bolesalavb@gmail.com)
    Created Date & Time:  Aug 18 2020 8:21 PM

    Class: CustomButton
    Description:  Customized FlatButton for this app
                  txt(String) - Text in button
   */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String txt;

  CustomButton({this.txt});

  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {

  @override
  Widget build(BuildContext context) {

    return FlatButton(
      color: Theme.of(context).primaryColor,
      textColor: Colors.black,
      hoverColor: Colors.white,
      disabledColor: Colors.grey,
      disabledTextColor: Colors.black,
      padding: EdgeInsets.all(8.0),
      splashColor: Colors.grey,
      onPressed: () {
        /*...*/
      },
      child: Text(widget.txt,
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }

}

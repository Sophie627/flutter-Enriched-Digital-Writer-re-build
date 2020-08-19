/*
    class CustomButton extends StatefulWidget
    Author: Sophie(bolesalavb@gmail.com)
    Created Date & Time:  Aug 18 2020 8:21 PM

    Class: CustomButton
    Description:  Customized FlatButton for this app
                  txt(String) - Text in button
                  onPress(Function) - Press effect of button
   */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String txt;
  final Function onPress;

  CustomButton({this.txt, this.onPress});

  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {

  @override
  Widget build(BuildContext context) {

    return OutlineButton(
      borderSide: BorderSide(
        color: Colors.grey,
      ),
      color: Theme.of(context).primaryColor,
      textColor: Colors.black,
      hoverColor: Colors.white,
      disabledTextColor: Colors.black,
      padding: EdgeInsets.all(8.0),
      splashColor: Colors.grey,
      onPressed: widget.onPress,
      child: Text(widget.txt,
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }

}

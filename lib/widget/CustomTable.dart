/*
    class CustomTable extends StatefulWidget
    Author: Sophie(bolesalavb@gmail.com)
    Created Date & Time:  Aug 18 2020 9:22 PM

    Class: CustomTable
    Description:  Customized FlatButton for this app
                  txt(String) - Text in button
   */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTable extends StatefulWidget {
  final String title;
  final List<String> imagePath;
  final double margin;

  CustomTable({
    this.title,
    this.imagePath,
    this.margin = 10.0,
  });

  _CustomTableState createState() => _CustomTableState();
}

class _CustomTableState extends State<CustomTable> {

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        children: [
          SizedBox(height: 20.0,),
          Stack(
            children: [
              Container(
                margin: EdgeInsets.all(widget.margin),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: Image.asset(widget.imagePath[0],
                  fit: BoxFit.fitWidth,
                ),
              ),
              Positioned(
                right: 0.0,
                top: 20.0,
                child: CircleButton('X'),
              ),
              Positioned(
                right: 0.0,
                top: 40.0,
                child: CircleButton('<'),
              ),
              Positioned(
                right: 0.0,
                top: 60.0,
                child: CircleButton('>'),
              ),
            ],
          ),
          SizedBox(height: 20.0,),
          Text(widget.title,
            style: TextStyle(
              fontSize: 14.0,
            ),
          ),
        ],
      ),
    );
  }
}

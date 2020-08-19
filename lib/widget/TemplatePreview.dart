/*
    class TemplatePreview extends StatefulWidget
    Author: Sophie(bolesalavb@gmail.com)
    Created Date & Time:  Aug 18 2020 9:22 PM

    Class: TemplatePreview
    Description:  Template Preview Container
                  title(String) - Title of template
                  imagePath(String) - Template's images path
                  margin(double)  - Margin of template container
   */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TemplatePreview extends StatefulWidget {
  final String title;
  final String imagePath;
  final double margin;

  TemplatePreview({
    this.title,
    this.imagePath,
    this.margin = 10.0,
  });

  _TemplatePreviewState createState() => _TemplatePreviewState();
}

class _TemplatePreviewState extends State<TemplatePreview> {

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
                child: Image.asset(widget.imagePath,
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

  /*
    Widget CircleButton(String txt)
    Author: Sophie(bolesalavb@gmail.com)
    Created Date & Time: Aug 18 2020 10:15 PM

    Widget: CircleButton
    Parameters: txt(String) - Text in circle button
   */
  Widget CircleButton(String txt) {

    return Container(
      width: 20.0,
      height: 20.0,
      decoration: new BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
        border: Border.all(
          width: 2.0,
          color: Colors.white,
        ),
      ),
      child: Center(
        child: Text(txt,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontSize: 14.0
          ),
        ),
      ),
    );
  }
}

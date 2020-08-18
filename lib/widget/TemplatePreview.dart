/*
    class TemplatePreview extends StatefulWidget
    Author: Sophie(bolesalavb@gmail.com)
    Created Date & Time:  Aug 18 2020 9:22 PM

    Class: TemplatePreview
    Description:  Customized FlatButton for this app
                  txt(String) - Text in button
   */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TemplatePreview extends StatefulWidget {
  final String title;
  final List<String> imagePath;
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

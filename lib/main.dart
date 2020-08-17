import 'dart:html';

import 'package:enriched_digital_writer/widget/ResizableWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Enriched Digital Writer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.grey[300],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ScrollController _NewTemplateScrollController = ScrollController();
  final ScrollController _CompletedTemplateScrollController = ScrollController();

  final Color _borderColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              height: 40.0,
                child: Image.asset('images/logo.png',
                fit: BoxFit.fitHeight,
              ),
            ),
            CanvasButton('Open'),
            CanvasButton('Save'),
            CanvasButton('Print'),
            CanvasButton('Delete'),
            CanvasButton('Copy'),
            CanvasButton('Paste'),
            CanvasButton('Undo'),
            CanvasButton('Redo'),
            CanvasButton('Text Box'),
            CanvasButton('Spell'),
            CanvasButton('Font Color'),
            CanvasButton('Fonts'),
            CanvasButton('Zoom'),
            CanvasButton('Un Freeze'),
            CanvasButton('Page Color'),
            CanvasButton('Help'),
          ],
        ),
        backgroundColor: Theme.of(context).primaryColor,
        shadowColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: Row(
            children: [
              ResizebleWidget(
                type: 'left',
                child: Container(
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.fromLTRB(76.0, 20.0, 76.0, 150.0),
                  color: Colors.white,
                ),
              ),
              ResizebleWidget(
                type: 'right',
                child: Container(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget TemplatePreview(String title, String img_url) {
    return Center(
      child: Column(
        children: [
          Text(title),
        ],
      ),
    );
  }

  /*
    Widget CanvasButton(String txt)
    Author: Sophie(bolesalavb@gmail.com)
    Created Date & Time:  Aug 17 2020 7:20 AM

    Widget: CanvasButton
    Parameters: txt(String) - Text in button
    Return: OutlineButton
   */
  Widget CanvasButton(String txt) {
    return Row(
      children: [
        SizedBox(width: 5.0,),
        OutlineButton(
          borderSide: BorderSide(
            color: Colors.grey,
            width: 5.0,
          ),
          color: Theme
              .of(context)
              .primaryColor,
          textColor: Colors.black,
          hoverColor: Colors.white,
          disabledTextColor: Colors.black,
          padding: EdgeInsets.all(8.0),
          splashColor: Colors.grey,
          onPressed: () {
            /*...*/
          },
          child: Text(txt,
            style: TextStyle(fontSize: 20.0),
          ),
        )
      ],
    );
  }
}

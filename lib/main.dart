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
                child: Scrollbar(
                  child: SingleChildScrollView(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                      color: Colors.white,
                      child: Column(
                        children: [
                          TemplatePreview("untitled", 'images/template_sample.png'),
                          TemplatePreview("untitled1", 'images/template_sample.png'),
                          TemplatePreview("untitled2", 'images/template_sample.png'),
                          TemplatePreview("untitled3", 'images/template_sample.png'),
                          TemplatePreview("untitled4", 'images/template_sample.png'),
                          TemplatePreview("untitled5", 'images/template_sample.png'),
                          TemplatePreview("untitled6", 'images/template_sample.png'),
                          TemplatePreview("untitled7", 'images/template_sample.png'),
                          TemplatePreview("untitled8", 'images/template_sample.png'),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.fromLTRB(76.0, 20.0, 76.0, 150.0),
//                  color: Colors.white,
                  child: Image.asset("images/template.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              ResizebleWidget(
                type: 'right',
                child: Scrollbar(
                  child: SingleChildScrollView(
                    child: Container(
                      color: Colors.white,
                      margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                      child: Column(
                        children: [
                          CanvasImage("images/canvas_image.png"),
                          CanvasImage("images/canvas_image.png"),
                          CanvasImage("images/canvas_image.png"),
                          CanvasImage("images/canvas_image.png"),
                          CanvasImage("images/canvas_image.png"),
                          CanvasImage("images/canvas_image.png"),
                          CanvasImage("images/canvas_image.png"),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget TemplatePreview(String title, String img_path) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 20.0,),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: Image.asset(img_path,
              fit: BoxFit.fitWidth,
            ),
          ),
          SizedBox(height: 20.0,),
          Text(title,
            style: TextStyle(
              fontSize: 14.0,
            ),
          ),
        ],
      ),
    );
  }

  Widget CanvasImage(String img_path) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 20.0,),
          Container(
            width: double.infinity,
            child: Image.asset(img_path,
              fit: BoxFit.fitWidth,
            ),
          ),
          SizedBox(height: 20.0,),
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

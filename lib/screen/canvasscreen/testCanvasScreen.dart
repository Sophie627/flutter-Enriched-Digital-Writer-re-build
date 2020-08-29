import 'dart:html';
import 'dart:js' as js;

import 'package:enriched_digital_writer/screen/canvasscreen/canvastopsection/canvasTopSection.dart';
import 'package:enriched_digital_writer/widget/ResizableWidget.dart';
import 'package:enriched_digital_writer/widget/texteditor/TestTextEditor.dart';
import 'package:flutter/material.dart';

class TestCanvasScreen extends StatefulWidget {
  TestCanvasScreen({Key key}) : super(key: key);

  @override
  _TestCanvasScreenState createState() => _TestCanvasScreenState();
}

class _TestCanvasScreenState extends State<TestCanvasScreen> {
  final ScrollController _CanvasVerticalScrollController = ScrollController();
  final ScrollController _TemplateScrollController = ScrollController();
  final ScrollController _FrameScrollController = ScrollController();

  js.JsObject _connector;

  // set setConnector(js.JsObject value) => setState(() => _connector = value);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: Column(
            children: [
              CanvasTopSection(connect: _connector,),
              Expanded(
                child: Row(
                  children: [
                    SizedBox(width: 20.0,),
                    ResizableWidget(
                      type: 'left',
                      child: Scrollbar(
                        isAlwaysShown: true,
                        controller: _TemplateScrollController,
                        child: SingleChildScrollView(
                          controller: _TemplateScrollController,
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
                      child: Scrollbar(
                        child: ListView(
                          children: [
                            SingleChildScrollView(
                              controller: _CanvasVerticalScrollController,
                              scrollDirection: Axis.vertical,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                margin: EdgeInsets.fromLTRB(76.0, 0.0, 76.0, 0.0),
                                height: MediaQuery.of(context).size.height - 56.0,
                                width: 600.0,
                                child: TestTextEditor(callback: (val) => setState(() => _connector = val),),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ResizableWidget(
                      type: 'right',
                      child: Scrollbar(
                        isAlwaysShown: true,
                        controller: _FrameScrollController,
                        child: SingleChildScrollView(
                          controller: _FrameScrollController,
                          child: Container(
                            color: Colors.white,
                            margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                            child: Column(
                              children: [
                                FrameImage("images/canvas_image.png"),
                                FrameImage("images/canvas_image.png"),
                                FrameImage("images/canvas_image.png"),
                                FrameImage("images/canvas_image.png"),
                                FrameImage("images/canvas_image.png"),
                                FrameImage("images/canvas_image.png"),
                                FrameImage("images/canvas_image.png"),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0,),
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
            ],
          ),
        ),
      ),
    );
  }

  /*
    Widget TemplatePreview(String title, String img_path)
    Author: Sophie(bolesalav@gmail.com)
    Created Date & Time:  Aug 17 2020 10:59PM

    Widget: TemplatePreview
    Description:  Template Image
    Parameters: title(String) - Title of Template
                img_path(String)  - Image path of Template

     Return:  Center
   */
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

  /*
    Widget FrameImage(String img_path)
    Author: Sophie(bolesalav@gmail.com)
    Created Date & Time:  Aug 17 2020 11:01 PM

    Widget: FrameImage
    Description:  Frame Image
    Parameters: img_path(String)  - Image path of Template

     Return:  Center
   */
  Widget FrameImage(String img_path) {
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
}
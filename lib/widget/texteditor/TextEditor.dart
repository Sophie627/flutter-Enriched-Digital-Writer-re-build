//import 'dart:ui' as ui;
//import 'dart:html' as html;
import 'package:flutter/material.dart';

class TextEditor extends StatefulWidget {
  final Color backgroundColor;

  TextEditor({this.backgroundColor = Colors.white});

  @override
  _TextEditorState createState() => _TextEditorState();
}

class _TextEditorState extends State<TextEditor> {
//  html.IFrameElement _element;
//
//  @override
//  void initState() {
//    super.initState();
//
//    _element = html.IFrameElement()
//      ..contentEditable = 'true'
//      ..style.border = '1px solid grey'
//      ..src =
//          'assets/web_elements/ckeditor5-build-decoupled-document/index.html';
//
//    // ignore:undefined_prefixed_name
//    ui.platformViewRegistry.registerViewFactory(
//      'text-editor',
//      (int viewId) => _element,
//    );
//  }

  @override
  Widget build(BuildContext context) {

    return Center(
        child: Container(
          color: widget.backgroundColor,
          height: 2000,
          width: 2000,
//          child: HtmlElementView(viewType: 'text-editor'),
        ),
    );
  }
}

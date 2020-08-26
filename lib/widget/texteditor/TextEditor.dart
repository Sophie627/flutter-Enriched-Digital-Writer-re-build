//import 'dart:ui' as ui;
//import 'dart:html' as html;
import 'package:flutter/material.dart';

class TextEditor extends StatefulWidget {
  final Color backgroundColor;
  final List<Widget> children;

  TextEditor({
    this.backgroundColor = Colors.white,
    this.children,
  });

  @override
  _TextEditorState createState() => _TextEditorState();
}

class _TextEditorState extends State<TextEditor> {

  TextEditingController txt = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Container(
        padding: EdgeInsets.all(15.0),
        color: widget.backgroundColor,
        height: 2000,
        width: 2000,
        child: Stack(
          fit: StackFit.expand,
          children: widget.children,
        ),
      ),
    );
  }
}

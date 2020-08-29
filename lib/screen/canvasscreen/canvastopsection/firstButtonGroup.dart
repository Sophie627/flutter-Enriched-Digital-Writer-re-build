import 'package:enriched_digital_writer/widget/CanvasButton.dart';
import 'package:flutter/material.dart';
import 'dart:js' as js;

class FirstButtonGroup extends StatelessWidget {

  final js.JsObject connect;

  const FirstButtonGroup({Key key,
    this.connect,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CanvasButton(
          txt: 'Open', 
          onPressed: () {
            Navigator.of(context).pushNamed("/dashboard");
          },),
        CanvasButton(
          txt: 'Save', 
          onPressed: () {}),
        CanvasButton(
          txt: 'Print', 
          onPressed: () {}),
        CanvasButton(
          txt: 'Delete', 
          onPressed: () {
            connect.callMethod('deleteText');
          }),
        CanvasButton(
          txt: 'Copy', 
          onPressed: () {
            connect.callMethod('copyText');
          }),
        CanvasButton(
          txt: 'Paste', 
          onPressed: () {
            connect.callMethod('pasteText');
          }),
        CanvasButton(
          txt: 'Undo', 
          onPressed: () {
            connect.callMethod('undoText');
          }),
        CanvasButton(
          txt: 'Redo', 
          onPressed: () {
            connect.callMethod('redoText');
          }),
      ]
    );
  }
}
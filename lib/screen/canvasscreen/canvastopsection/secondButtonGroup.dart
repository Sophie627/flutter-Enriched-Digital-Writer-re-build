import 'package:enriched_digital_writer/widget/CanvasButton.dart';
import 'package:enriched_digital_writer/widget/ColorPickerButton.dart';
import 'package:flutter/material.dart';
import 'dart:js' as js;

class SecondButtonGroup extends StatelessWidget {
  
  final js.JsObject connect;

  const SecondButtonGroup({Key key,
    this.connect,
  }) : super(key: key);

  void changeBackgroundColor (Color color) {
    String colorString = color.toString(); // Color(0x12345678)
    String valueString = colorString.split('(0xff')[1].split(')')[0]; 
    connect.callMethod('changeBackgroundColor', ['#' + valueString]);
  }

  void changeFontColor (Color color) {
    String colorString = color.toString(); // Color(0x12345678)
    String valueString = colorString.split('(0xff')[1].split(')')[0]; 
    connect.callMethod('changeFontColor', ['#' + valueString]);
  }

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CanvasButton(
          txt: 'Text Box', 
          onPressed: () {}),
        CanvasButton(
          txt: 'Spell', 
          onPressed: () {}),
        ColorPickerButton(
          txt: 'Font Color',
          onColorChanged: changeFontColor,
          btnColor: Colors.white,
        ),
        CanvasButton(
          txt: 'Fonts', 
          onPressed: () {
            connect.callMethod('changeFontName', ['mv boli']);
          }),
        CanvasButton(
          txt: 'Zoom', 
          onPressed: () {}),
        CanvasButton(
          txt: 'Un Freeze', 
          onPressed: () {}),
        ColorPickerButton(
          txt: 'Page Color',
          onColorChanged: changeBackgroundColor,
          btnColor: Colors.white,
        ),
        CanvasButton(
          txt: 'Help', 
          onPressed: () {
            // connect.callMethod('changeBackgroundColor', ['Hello from first variant']);
          }),
      ]
    );
  }
}
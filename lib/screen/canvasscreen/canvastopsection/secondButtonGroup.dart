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
    connect.callMethod('changeBackgroundColor', ['#${color.value.toRadixString(16)}']);
  }

  void changeFontColor (Color color) {
    connect.callMethod('changeFontColor', ['#${color.value.toRadixString(16)}']);
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
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return new SimpleDialog(
                  children: <Widget>[
                    new FittedBox(
                      child: new ListView(
                        children: <Widget>[
                          new Text("one"),
                          new Text("two"),
                        ],
                      ),
                    )
                  ],
                );
              },
            );
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
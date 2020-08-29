import 'package:enriched_digital_writer/screen/canvasscreen/canvastopsection/firstButtonGroup.dart';
import 'package:enriched_digital_writer/screen/canvasscreen/canvastopsection/secondButtonGroup.dart';
import 'package:flutter/material.dart';
import 'dart:js' as js;

class CanvasTopSection extends StatefulWidget {

  final js.JsObject connect;

  CanvasTopSection({Key key,
    this.connect,
  }) : super(key: key);

  @override
  _CanvasTopSectionState createState() => _CanvasTopSectionState();
}

class _CanvasTopSectionState extends State<CanvasTopSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: Stack(
        children: [
          Positioned(
            top: 20.0,
            left: 30.0,
            child: Container(
              height: 60.0,
              child: Image.asset('images/logo.png',
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Container(
            height: 100.0,
            child: MediaQuery.of(context).size.width > 1400
            ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FirstButtonGroup(connect: widget.connect),
                SecondButtonGroup(connect: widget.connect),
              ],
            )
            : Column(
              children: [
                FirstButtonGroup(connect: widget.connect),
                SecondButtonGroup(connect: widget.connect),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
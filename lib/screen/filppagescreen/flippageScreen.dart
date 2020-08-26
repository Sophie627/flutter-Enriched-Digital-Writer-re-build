import 'dart:ui' as ui;
import 'dart:html' as html;
import 'package:enriched_digital_writer/widget/CustomButton.dart';
import 'package:flutter/material.dart';
import '../filppagescreen/css.dart';
import '../filppagescreen/turnjs.dart';

class FlipPageScreen extends StatefulWidget {
  @override
  _FlipPageScreenState createState() => _FlipPageScreenState();
}

class _FlipPageScreenState extends State<FlipPageScreen> {
  html.IFrameElement _element;

  @override
  void initState() {
    super.initState();

    _element = html.IFrameElement()
      ..style.border = 'none'
      ..src = 'assets/web_elements/flippage/samples/magazine/index.html';

    // ignore:undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      'flip-page',
          (int viewId) => _element,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              color: Theme.of(context).primaryColor,
              height: 100.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30.0,),
                    height: 60.0,
                    child: Image.asset('images/logo.png',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: HtmlElementView(viewType: 'flip-page'),
              )
            ),
            Container(
              color: Theme.of(context).primaryColor,
              height: 100.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomButton(
                    txt: 'Create Flip Book',
                    onPress: () {},
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  CustomButton(
                    txt: 'Back to Book Builder',
                    onPress: () {
                      Navigator.of(context).pushNamed("/bookbuilder");
                    },
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

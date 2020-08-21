import 'dart:ui' as ui;
import 'dart:html' as html;
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
      ..srcdoc = """
        <!DOCTYPE html>
      <html lang="en">
      <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Document</title>
          <style>
              $css
          </style>
          <script src="https://code.jquery.com/jquery-1.7.2.min.js"></script>
      </head>
      <body>
          <div id="flipbook" style="margin:200px auto;">
              <div class="hard">P I Q U E</div>
              <div class="hard"></div>
              <div class="page"><img style="width:100%;height:100%;" src="https://raw.github.com/blasten/turn.js/master/demos/magazine/pages/01.jpg" draggable="false" alt="" /></div>
              <div class="page"><img style="width:100%;height:100%;" src="https://raw.github.com/blasten/turn.js/master/demos/magazine/pages/02.jpg" draggable="false" alt="" /></div>
              <div class="page"><img style="width:100%;height:100%;" src="https://raw.github.com/blasten/turn.js/master/demos/magazine/pages/03.jpg" draggable="false" alt="" /></div>
              <div class="page"><img style="width:100%;height:100%;" src="https://raw.github.com/blasten/turn.js/master/demos/magazine/pages/04.jpg" draggable="false" alt="" /></div>
              <div class="page"><img style="width:100%;height:100%;" src="https://raw.github.com/blasten/turn.js/master/demos/magazine/pages/05.jpg" draggable="false" alt="" /></div>
              <div class="page"><img style="width:100%;height:100%;" src="https://raw.github.com/blasten/turn.js/master/demos/magazine/pages/06.jpg" draggable="false" alt="" /></div>
              <div class="hard"></div>
              <div class="hard"></div>
          </div>
          <script type="text/javascript">
              \$(document).ready(function() {
                  \$(window).resize(function() {
                      location.reload();
                  })
              });
              $turnjs
              \$("#flipbook").turn({
                  width: 900,
                  height: 1200,
              });
          </script>
      </body>
      </html>
        """;

    // ignore:undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      'example',
          (int viewId) => _element,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: HtmlElementView(viewType: 'example'),
        ),
      ),
    );
  }
}

import 'dart:ui' as ui;
import 'dart:html' as html;
import 'dart:js' as js;
import 'package:enriched_digital_writer/screen/canvasscreen/testCanvasScreen.dart';
import 'package:enriched_digital_writer/widget/texteditor/divelement.dart';
import 'package:flutter/material.dart';

typedef void ConnectorCallback(js.JsObject val);
typedef void ElementCallback(html.IFrameElement val);

class TestTextEditor extends StatefulWidget {

  final ConnectorCallback callback;
  final ElementCallback elementCallback;

  TestTextEditor({
    this.callback,
    this.elementCallback
  });

  @override
  _TestTextEditorState createState() => _TestTextEditorState();
}

class _TestTextEditorState extends State<TestTextEditor> {
  html.IFrameElement _element;

  @override
  void initState() {
    super.initState();

    js.context["connect_content_to_flutter"] = (content) {
      widget.callback(content);
    };

    _element = html.IFrameElement()
      ..contentEditable = 'true'
      ..style.border = '1px solid grey'
      ..srcdoc = divBeforeEditor + divAfterEditor;

    // ignore:undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      'text-editor',
          (int viewId) => _element,
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: HtmlElementView(viewType: 'text-editor'),
        ),
    );
  }
}

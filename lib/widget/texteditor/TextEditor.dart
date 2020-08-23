import 'dart:ui' as ui;
import 'dart:html' as html;
import 'package:flutter/material.dart';
import '../texteditor/TextEditorCSS.dart';
import 'package:enriched_digital_writer/widget/texteditor/TextEditorJS.dart';

class TextEditor extends StatefulWidget {
  @override
  _TextEditorState createState() => _TextEditorState();
}

class _TextEditorState extends State<TextEditor> {
  html.IFrameElement _element;

  @override
  void initState() {
    super.initState();

    _element = html.IFrameElement()
      ..contentEditable = 'true'
      ..style.border = '1px solid grey'
      ..src =
          'assets/web_elements/ckeditor5-build-decoupled-document/index.html';

    // ignore:undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      'text-editor',
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
          child: HtmlElementView(viewType: 'text-editor'),
        ),
      ),
    );
  }
}

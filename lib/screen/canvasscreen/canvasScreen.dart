import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:enriched_digital_writer/widget/ResizableWidget.dart';
import 'package:enriched_digital_writer/widget/WebBidirectionScrollbar.dart';
import 'package:enriched_digital_writer/widget/WebDraggableScrollbar.dart';
import 'package:enriched_digital_writer/widget/texteditor/TextEditor.dart';
import 'package:enriched_digital_writer/widget/texteditor/TextEditorMethods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class CanvasScreen extends StatefulWidget {

  final String templateID;

  CanvasScreen({Key key,
    this.templateID = '###',
  }) : super(key: key);

  @override
  _CanvasScreenState createState() => _CanvasScreenState();
}

class _CanvasScreenState extends State<CanvasScreen> {
  final ScrollController _canvasHorizontalScrollController = ScrollController();
  final ScrollController _canvasVerticalScrollController = ScrollController();
  final ScrollController _TemplateScrollController = ScrollController();
  final ScrollController _FrameScrollController = ScrollController();
  TextEditingController txt = TextEditingController();

  Color _scrollbarBorderColor = Color.fromRGBO(208, 208, 208, 1.0);
  Color _scrollbarColor = Color.fromRGBO(208, 208, 208, 1.0);
  Color _scrollbarBackgroundColor = Color.fromRGBO(232, 232, 232, 1.0);
  Color _scrollbarHoverColor = Color.fromRGBO(127, 127, 127, 1.0);

  bool _isLoadingTemplate = true;
  List<Widget> _editorWidgets = [];
  List _editorState = [
    {
      "type": "page",
      "backgroundColor": [255, 255, 255, 1.0],
    },
  ];

  /*
    fetchTemplateIDData() async
    Author: Sophie(bolesalavb@gmail.com)
    Created Date & Time: Aug 26 2020 2:58 PM

    Function: fetchTemplateIDtData

    Description:  Using this function, template Data related to id can be gotten from firebase.
  */
  fetchTemplateIDData() async {
    FirebaseFirestore.instance.collection('templates').doc(widget.templateID).snapshots().listen((data) => {
      setState(() {
        _editorState = data.data()['data'];
        _isLoadingTemplate = false;
      }),
//      setState(() {
//        _templateData = [];
//        _isLoadingTemplate = true;
//      }),
//      data.docs.forEach((doc) => _templateData.add({
//        'id': doc.id,
//        'data': doc.data(),
//      })),
//      setState(() {
//        _templateData = _templateData;
//        _isLoadingTemplate = false;
//      }),
    });
  }
  /*
    void onPressTextBox()
    Author: Sophie(bolesalavb@gmail.com)
    Created Date & Time:  Aug 27 2020 9:32 AM

    Function onPressTextBox
    Description:  Function related to Text box button

   */
  void onPressTextBox() {
    if (_editorState.length == 1) {
      _editorState.add(
          {
            'type': 'body',
            'data': [
              {
                'type': 'text',
                'data': '',
              }
            ],
          }
      );
    }
    buildEditorContent(_editorState);
  }

  void onChangedText(String txt) {
    setState(() {
      _editorState[1]['data'][0]['data'] = txt;
    });
  }

  /*
    void buildEditorContent (List editorState)
    Author: Sophie(bolesalavb@gmail.com)
    Created Date & Time:  Aug 26 2020 11:01 PM

    Function: buildEditorContent
    Description:  Building Editor widgets
    Parameters: editorState(List) - state related to editor
   */
  void buildEditorContent (List editorState) {
    if (_editorState.length == 2) {
      setState(() {
        _editorWidgets = [
          TextField(
            onChanged: onChangedText,
            controller: txt,
            minLines: 10,
            maxLines: 15,
            autocorrect: true,
            decoration: InputDecoration(
              hintText: 'Write your status here',
            ),
          ),
        ];
      });

      if (_editorState[1]['data'] is List) {
        txt.text = _editorState[1]['data'][0]['data'];
      } else {
        txt.text = '';
      }
    } else {
      setState(() {
        _editorWidgets = [];
      });
    }
  }

  Future<void> updateTemplate() {
   FirebaseFirestore.instance.collection('templates')
      .doc(widget.templateID)
      .update({'data': _editorState})
      .then((value) =>
         Alert(
           context: context,
           type: AlertType.success,
           title: "SUCCESS!",
           desc: "Template Updated.",
           buttons: [
             DialogButton(
               child: Text(
                 "OK",
                 style: TextStyle(color: Colors.white, fontSize: 20),
               ),
               onPressed: () => Navigator.pop(context),
               width: 120,
             )
           ],
         )
         .show()
      )
      .catchError((error) =>
         Alert(
             context: context,
             type: AlertType.error,
             title: "ERROR!",
             desc: "Failed to update template: $error",
             buttons: [
               DialogButton(
                 child: Text(
                   "OK",
                   style: TextStyle(color: Colors.white, fontSize: 20),
                 ),
                 onPressed: () => Navigator.pop(context),
                 width: 120,
               )
             ],
         )
         .show()
      );
  }

  /*
    void changeEditorBackgroundColor(Color color)
    Author: Sophie(bolesalavb@gmail.com)
    Created Date & Time:  Aug 23 2020 10:33 PM
    Updated by Sophie on Aug 25 2020 11:50 PM
      Descripion: Stored color as list

    Function: changeEditorBackgroundColor
    Description: Change backgroundcolor of editor

    Parameter:  color(Color)  - Background of editor
   */
  void changeEditorBackgroundColor(Color color) {
    setState(() {
      _editorState[0]['backgroundColor'] = [color.red, color.green, color.blue, color.opacity];
    });
  }

  @override
  void initState() {
    super.initState();

    fetchTemplateIDData();
  }

  @override
  Widget build(BuildContext context) {
    buildEditorContent(_editorState);

    return Scaffold(
      body: _isLoadingTemplate
      ? Center(child: CircularProgressIndicator(),)
      : Center(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: Column(
            children: [
              Container(
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
//                      top: 20.0,
                      child:  MediaQuery.of(context).size.width > 1400
                      ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CanvasButton('Open', () {
                            Navigator.of(context).pushNamed("/dashboard");
                          }),
                          CanvasButton('Save', updateTemplate),
                          CanvasButton('Print', () {}),
                          CanvasButton('Delete', () {}),
                          CanvasButton('Copy', () {}),
                          CanvasButton('Paste', () {}),
                          CanvasButton('Undo', () {}),
                          CanvasButton('Redo', () {}),
                          CanvasButton('Text Box', onPressTextBox),
                          CanvasButton('Spell', () {}),
                          CanvasButton('Font Color', () {}),
                          CanvasButton('Fonts', () {}),
                          CanvasButton('Zoom', () {}),
                          CanvasButton('Un Freeze', () {}),
                          ColorPickerButton('Page Color', changeEditorBackgroundColor, getListToColor(_editorState[0]['backgroundColor']), context),
                          CanvasButton('Help', () {}),
                        ],
                      )
                      : Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CanvasButton('Open', () {
                                Navigator.of(context).pushNamed("/dashboard");
                              }),
                              CanvasButton('Save', updateTemplate),
                              CanvasButton('Print', () {
                                FirebaseFirestore.instance.collection('templates').add(
                                    {'data' : _editorState});
                              }),
                              CanvasButton('Delete', () {}),
                              CanvasButton('Copy', () {}),
                              CanvasButton('Paste', () {}),
                              CanvasButton('Undo', () {}),
                              CanvasButton('Redo', () {}),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CanvasButton('Text Box', onPressTextBox),
                              CanvasButton('Spell', () {}),
                              CanvasButton('Font Color', () {}),
                              CanvasButton('Fonts', () {}),
                              CanvasButton('Zoom', () {}),
                              CanvasButton('Un Freeze', () {}),
                              ColorPickerButton('Page Color', changeEditorBackgroundColor, getListToColor(_editorState[0]['backgroundColor']), context),
                              CanvasButton('Help', () {}),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    SizedBox(width: 20.0,),
                    ResizableWidget(
                      child: WebDraggableScrollbar(
                        heightScrollThumb: 100.0,
                        scrollbarBackgroundColor: _scrollbarBackgroundColor,
                        scrollbarBorderColor: _scrollbarBorderColor,
                        scrollbarColor: _scrollbarColor,
                        scrollbarHoverColor: _scrollbarHoverColor,
                        controller: _TemplateScrollController,
                        child: SingleChildScrollView(
                          controller: _TemplateScrollController,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(20.0, 20.0, 40.0, 20.0),
                            color: Colors.white,
                            child: Column(
                              children: [
                                TemplatePreview("untitled", 'images/template_sample.png'),
                                TemplatePreview("untitled1", 'images/template_sample.png'),
                                TemplatePreview("untitled2", 'images/template_sample.png'),
                                TemplatePreview("untitled3", 'images/template_sample.png'),
                                TemplatePreview("untitled4", 'images/template_sample.png'),
                                TemplatePreview("untitled5", 'images/template_sample.png'),
                                TemplatePreview("untitled6", 'images/template_sample.png'),
                                TemplatePreview("untitled7", 'images/template_sample.png'),
                                TemplatePreview("untitled8", 'images/template_sample.png'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        margin: EdgeInsets.fromLTRB(76.0, 0.0, 76.0, 0.0),
                        height: MediaQuery.of(context).size.height - 120.0,
                        child: WebBidirectionScrollbar(
                          scrollbarBackgroundColor: _scrollbarBackgroundColor,
                          scrollbarBorderColor: _scrollbarBorderColor,
                          scrollbarColor: _scrollbarColor,
                          scrollbarHoverColor: _scrollbarHoverColor,
                          horizontalController: _canvasHorizontalScrollController,
                          verticalController: _canvasVerticalScrollController,
                          child: TextEditor(
                            backgroundColor: getListToColor(_editorState[0]['backgroundColor']),
                            children: _editorWidgets,
                          ),
                        ),
                      ),
                    ),
                    ResizableWidget(
                      type: 'right',
                      child: WebDraggableScrollbar(
                        scrollPosition: 'left',
                        heightScrollThumb: 100.0,
                        scrollbarBackgroundColor: _scrollbarBackgroundColor,
                        scrollbarBorderColor: _scrollbarBorderColor,
                        scrollbarColor: _scrollbarColor,
                        scrollbarHoverColor: _scrollbarHoverColor,
                        controller: _FrameScrollController,
                        child: SingleChildScrollView(
                          controller: _FrameScrollController,
                          child: Container(
                            color: Colors.white,
                            margin: EdgeInsets.fromLTRB(40.0, 20.0, 20.0, 0.0),
                            child: Column(
                              children: [
                                FrameImage("images/canvas_image.png"),
                                FrameImage("images/canvas_image.png"),
                                FrameImage("images/canvas_image.png"),
                                FrameImage("images/canvas_image.png"),
                                FrameImage("images/canvas_image.png"),
                                FrameImage("images/canvas_image.png"),
                                FrameImage("images/canvas_image.png"),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0,),
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
            ],
          ),
        ),
      ),
    );
  }

  /*
    Widget TemplatePreview(String title, String img_path)
    Author: Sophie(bolesalav@gmail.com)
    Created Date & Time:  Aug 17 2020 10:59PM

    Widget: TemplatePreview
    Description:  Template Image
    Parameters: title(String) - Title of Template
                img_path(String)  - Image path of Template

     Return:  Center
   */
  Widget TemplatePreview(String title, String img_path) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 20.0,),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: Image.asset(img_path,
              fit: BoxFit.fitWidth,
            ),
          ),
          SizedBox(height: 20.0,),
          Text(title,
            style: TextStyle(
              fontSize: 14.0,
            ),
          ),
        ],
      ),
    );
  }

  /*
    Widget FrameImage(String img_path)
    Author: Sophie(bolesalav@gmail.com)
    Created Date & Time:  Aug 17 2020 11:01 PM

    Widget: FrameImage
    Description:  Frame Image
    Parameters: img_path(String)  - Image path of Template

     Return:  Center
   */
  Widget FrameImage(String img_path) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 20.0,),
          Container(
            width: double.infinity,
            child: Image.asset(img_path,
              fit: BoxFit.fitWidth,
            ),
          ),
          SizedBox(height: 20.0,),
        ],
      ),
    );
  }

  /*
    Widget CanvasButton(String txt, Function func)
    Author: Sophie(bolesalavb@gmail.com)
    Created Date & Time:  Aug 17 2020 7:20 AM
    Updated by Sophie at Aug 23 2020 10:24 PM
      Description:  Added function as parameter

    Widget: CanvasButton
    Parameters: txt(String) - Text in button
                func(Function)  - On press function
    Return: OutlineButton
   */
  Widget CanvasButton(String txt, Function func) {
    return Row(
      children: [
        SizedBox(width: 5.0,),
        ButtonTheme(
          minWidth: 66.0,
          child: OutlineButton(
            borderSide: BorderSide(
              color: Colors.grey,
              width: 5.0,
            ),
            color: Colors.grey[300],
            textColor: Colors.black,
            hoverColor: Colors.white,
            disabledTextColor: Colors.black,
            padding: EdgeInsets.all(8.0),
            splashColor: Colors.grey,
            onPressed: func,
            child: Text(txt,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ),
      ],
    );
  }

  /*
    Widget ColorPickerButton(String txt, void onChangeColor, Color btnColor, BuildContext context)
    Author: Sophie(bolesalavb@gmail.com)
    Created Date & Time:  Aug 23 2020 10:36 PM

    Widget: ColorPickerButton
    Parameters: txt(String) - Text in button
                onChangeColor(Function)  -  Function for changing color
                btnColor(Color) - Color of button
    Return: OutlineButton
   */
  Widget ColorPickerButton(String txt, Function onChangeColor, Color btnColor, BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 5.0,),
        ButtonTheme(
          minWidth: 66.0,
          child: OutlineButton(
            borderSide: BorderSide(
              color: Colors.grey,
              width: 5.0,
            ),
            color: btnColor,
            textColor: Colors.black,
            hoverColor: Colors.white,
            disabledTextColor: Colors.black,
            padding: EdgeInsets.all(8.0),
            splashColor: Colors.grey,
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    titlePadding: const EdgeInsets.all(0.0),
                    contentPadding: const EdgeInsets.all(0.0),
                    content: SingleChildScrollView(
                      child: ColorPicker(
                        pickerColor: btnColor,
                        onColorChanged: onChangeColor,
                        colorPickerWidth: 300.0,
                        pickerAreaHeightPercent: 0.7,
                        enableAlpha: true,
                        displayThumbColor: true,
                        showLabel: true,
                        paletteType: PaletteType.hsv,
                        pickerAreaBorderRadius: const BorderRadius.only(
                          topLeft: const Radius.circular(2.0),
                          topRight: const Radius.circular(2.0),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
            child: Text(txt,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ),
      ],
    );
  }
}
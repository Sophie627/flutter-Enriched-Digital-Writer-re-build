import 'package:enriched_digital_writer/widget/HeadingText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:link/link.dart';
import 'package:url_launcher/url_launcher.dart';

class DashboardScreen extends StatefulWidget {
  DashboardScreen({Key key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final ScrollController _NewTemplateScrollController = ScrollController();
  final ScrollController _CompletedTemplateScrollController = ScrollController();

  final Color _borderColor = Colors.grey;

  void _showErrorSnackBar() {
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text('Oops... the URL couldn\'t be opened!'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: Column(
            children: [
              Container(
                height: 100.0,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 40.0),
                      height: 60.0,
                        child: Image.asset('images/logo.png',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    CustomButton('Close', () {
                      SystemNavigator.pop();
                    }),
                    SizedBox(
                      width: 30.0,
                    ),
                    CustomButton('My Account', () async {
                      const url = 'https://www.enriched.online/my-account/woo-wallet/';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    }),
                    SizedBox(
                      width: 30.0,
                    ),
                    CustomButton('Forum', () async {
                      const url = 'https://www.enriched.online/members-page/members-forum-page/';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    }),
                    SizedBox(
                      width: 30.0,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(height: 20,),
                            HeadingText(txt: 'New Template Library'),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(20.0),
                                padding: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: _borderColor,
                                  ),
                                ),
                                child: Scrollbar(
                                  isAlwaysShown: true,
                                  controller: _NewTemplateScrollController,
                                  child: SingleChildScrollView(
                                    controller: _NewTemplateScrollController,
                                    scrollDirection: Axis.vertical,
                                    child: Table(
                                      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                                      children: [
                                        TableRow( children: [
                                          TableCell('T1h) An Adult - 30, maybe 40 or something',
                                          ),
                                          TableCell("T6c) Boy - it's a boy - a very special little boy in...",
                                          ),
                                          TableCell('eBC19) Rectangle landspace single...',
                                          ),
                                        ]),
                                        TableRow( children: [
                                          TableCell('T1h) An Adult - 30, maybe 40 or something',
                                          ),
                                          TableCell("T6c) Boy - it's a boy - a very special little boy in...",
                                          ),
                                          TableCell('eBC19) Rectangle landspace single...',
                                          ),
                                        ]),
                                        TableRow( children: [
                                          TableCell('T1h) An Adult - 30, maybe 40 or something',
                                          ),
                                          TableCell("T6c) Boy - it's a boy - a very special little boy in...",
                                          ),
                                          TableCell('eBC19) Rectangle landspace single...',
                                          ),
                                        ]),TableRow( children: [
                                          TableCell('T1h) An Adult - 30, maybe 40 or something',
                                          ),
                                          TableCell("T6c) Boy - it's a boy - a very special little boy in...",
                                          ),
                                          TableCell('eBC19) Rectangle landspace single...',
                                          ),
                                        ]),TableRow( children: [
                                          TableCell('T1h) An Adult - 30, maybe 40 or something',
                                          ),
                                          TableCell("T6c) Boy - it's a boy - a very special little boy in...",
                                          ),
                                          TableCell('eBC19) Rectangle landspace single...',
                                          ),
                                        ]),TableRow( children: [
                                          TableCell('T1h) An Adult - 30, maybe 40 or something',
                                          ),
                                          TableCell("T6c) Boy - it's a boy - a very special little boy in...",
                                          ),
                                          TableCell('eBC19) Rectangle landspace single...',
                                          ),
                                        ]),TableRow( children: [
                                          TableCell('T1h) An Adult - 30, maybe 40 or something',
                                          ),
                                          TableCell("T6c) Boy - it's a boy - a very special little boy in...",
                                          ),
                                          TableCell('eBC19) Rectangle landspace single...',
                                          ),
                                        ]),TableRow( children: [
                                          TableCell('T1h) An Adult - 30, maybe 40 or something',
                                          ),
                                          TableCell("T6c) Boy - it's a boy - a very special little boy in...",
                                          ),
                                          TableCell('eBC19) Rectangle landspace single...',
                                          ),
                                        ]),TableRow( children: [
                                          TableCell('T1h) An Adult - 30, maybe 40 or something',
                                          ),
                                          TableCell("T6c) Boy - it's a boy - a very special little boy in...",
                                          ),
                                          TableCell('eBC19) Rectangle landspace single...',
                                          ),
                                        ]),TableRow( children: [
                                          TableCell('T1h) An Adult - 30, maybe 40 or something',
                                          ),
                                          TableCell("T6c) Boy - it's a boy - a very special little boy in...",
                                          ),
                                          TableCell('eBC19) Rectangle landspace single...',
                                          ),
                                        ]),TableRow( children: [
                                          TableCell('T1h) An Adult - 30, maybe 40 or something',
                                          ),
                                          TableCell("T6c) Boy - it's a boy - a very special little boy in...",
                                          ),
                                          TableCell('eBC19) Rectangle landspace single...',
                                          ),
                                        ]),TableRow( children: [
                                          TableCell('T1h) An Adult - 30, maybe 40 or something',
                                          ),
                                          TableCell("T6c) Boy - it's a boy - a very special little boy in...",
                                          ),
                                          TableCell('eBC19) Rectangle landspace single...',
                                          ),
                                        ]),TableRow( children: [
                                          TableCell('T1h) An Adult - 30, maybe 40 or something',
                                          ),
                                          TableCell("T6c) Boy - it's a boy - a very special little boy in...",
                                          ),
                                          TableCell('eBC19) Rectangle landspace single...',
                                          ),
                                        ]),TableRow( children: [
                                          TableCell('T1h) An Adult - 30, maybe 40 or something',
                                          ),
                                          TableCell("T6c) Boy - it's a boy - a very special little boy in...",
                                          ),
                                          TableCell('eBC19) Rectangle landspace single...',
                                          ),
                                        ]),TableRow( children: [
                                          TableCell('T1h) An Adult - 30, maybe 40 or something',
                                          ),
                                          TableCell("T6c) Boy - it's a boy - a very special little boy in...",
                                          ),
                                          TableCell('eBC19) Rectangle landspace single...',
                                          ),
                                        ]),TableRow( children: [
                                          TableCell('T1h) An Adult - 30, maybe 40 or something',
                                          ),
                                          TableCell("T6c) Boy - it's a boy - a very special little boy in...",
                                          ),
                                          TableCell('eBC19) Rectangle landspace single...',
                                          ),
                                        ]),TableRow( children: [
                                          TableCell('T1h) An Adult - 30, maybe 40 or something',
                                          ),
                                          TableCell("T6c) Boy - it's a boy - a very special little boy in...",
                                          ),
                                          TableCell('eBC19) Rectangle landspace single...',
                                          ),
                                        ]),TableRow( children: [
                                          TableCell('T1h) An Adult - 30, maybe 40 or something',
                                          ),
                                          TableCell("T6c) Boy - it's a boy - a very special little boy in...",
                                          ),
                                          TableCell('eBC19) Rectangle landspace single...',
                                          ),
                                        ]),TableRow( children: [
                                          TableCell('T1h) An Adult - 30, maybe 40 or something',
                                          ),
                                          TableCell("T6c) Boy - it's a boy - a very special little boy in...",
                                          ),
                                          TableCell('eBC19) Rectangle landspace single...',
                                          ),
                                        ]),TableRow( children: [
                                          TableCell('T1h) An Adult - 30, maybe 40 or something',
                                          ),
                                          TableCell("T6c) Boy - it's a boy - a very special little boy in...",
                                          ),
                                          TableCell('eBC19) Rectangle landspace single...',
                                          ),
                                        ]),TableRow( children: [
                                          TableCell('T1h) An Adult - 30, maybe 40 or something',
                                          ),
                                          TableCell("T6c) Boy - it's a boy - a very special little boy in...",
                                          ),
                                          TableCell('eBC19) Rectangle landspace single...',
                                          ),
                                        ]),TableRow( children: [
                                          TableCell('T1h) An Adult - 30, maybe 40 or something',
                                          ),
                                          TableCell("T6c) Boy - it's a boy - a very special little boy in...",
                                          ),
                                          TableCell('eBC19) Rectangle landspace single...',
                                          ),
                                        ]),TableRow( children: [
                                          TableCell('T1h) An Adult - 30, maybe 40 or something',
                                          ),
                                          TableCell("T6c) Boy - it's a boy - a very special little boy in...",
                                          ),
                                          TableCell('eBC19) Rectangle landspace single...',
                                          ),
                                        ]),
                                      ],
                                    ),
                                  ),
                                ),

                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(height: 20,),
                            HeadingText(txt: 'Completed Template Library'),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: _borderColor,
                                  ),
                                ),
                                margin: EdgeInsets.fromLTRB(0.0, 20.0, 20.0, 20.0),
                                padding: EdgeInsets.all(10.0),
                                child: Scrollbar(
                                  isAlwaysShown: true,
                                  controller: _CompletedTemplateScrollController,
                                  child: SingleChildScrollView(
                                    controller: _CompletedTemplateScrollController,
                                    scrollDirection: Axis.vertical,
                                    child: Table(
                                      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                                      children: [
                                        TableRow( children: [
                                          TableCell('untitled 1'),
                                          TableCell(""),
                                          TableCell(''),
                                        ]),TableRow( children: [
                                          TableCell('untitled 1'),
                                          TableCell(""),
                                          TableCell(''),
                                        ]),TableRow( children: [
                                          TableCell('untitled 1'),
                                          TableCell(""),
                                          TableCell(''),
                                        ]),TableRow( children: [
                                          TableCell('untitled 1'),
                                          TableCell(""),
                                          TableCell(''),
                                        ]),TableRow( children: [
                                          TableCell('untitled 1'),
                                          TableCell(""),
                                          TableCell(''),
                                        ]),TableRow( children: [
                                          TableCell('untitled 1'),
                                          TableCell(""),
                                          TableCell(''),
                                        ]),TableRow( children: [
                                          TableCell('untitled 1'),
                                          TableCell(""),
                                          TableCell(''),
                                        ]),TableRow( children: [
                                          TableCell('untitled 1'),
                                          TableCell(""),
                                          TableCell(''),
                                        ]),TableRow( children: [
                                          TableCell('untitled 1'),
                                          TableCell(""),
                                          TableCell(''),
                                        ]),TableRow( children: [
                                          TableCell('untitled 1'),
                                          TableCell(""),
                                          TableCell(''),
                                        ]),TableRow( children: [
                                          TableCell('untitled 1'),
                                          TableCell(""),
                                          TableCell(''),
                                        ]),TableRow( children: [
                                          TableCell('untitled 1'),
                                          TableCell(""),
                                          TableCell(''),
                                        ]),TableRow( children: [
                                          TableCell('untitled 1'),
                                          TableCell(""),
                                          TableCell(''),
                                        ]),TableRow( children: [
                                          TableCell('untitled 1'),
                                          TableCell(""),
                                          TableCell(''),
                                        ]),TableRow( children: [
                                          TableCell('untitled 1'),
                                          TableCell(""),
                                          TableCell(''),
                                        ]),TableRow( children: [
                                          TableCell('untitled 1'),
                                          TableCell(""),
                                          TableCell(''),
                                        ]),TableRow( children: [
                                          TableCell('untitled 1'),
                                          TableCell(""),
                                          TableCell(''),
                                        ]),TableRow( children: [
                                          TableCell('untitled 1'),
                                          TableCell(""),
                                          TableCell(''),
                                        ]),TableRow( children: [
                                          TableCell('untitled 1'),
                                          TableCell(""),
                                          TableCell(''),
                                        ]),TableRow( children: [
                                          TableCell('untitled 1'),
                                          TableCell(""),
                                          TableCell(''),
                                        ]),TableRow( children: [
                                          TableCell('untitled 1'),
                                          TableCell(""),
                                          TableCell(''),
                                        ]),TableRow( children: [
                                          TableCell('untitled 1'),
                                          TableCell(""),
                                          TableCell(''),
                                        ]),TableRow( children: [
                                          TableCell('untitled 1'),
                                          TableCell(""),
                                          TableCell(''),
                                        ]),TableRow( children: [
                                          TableCell('untitled 1'),
                                          TableCell(""),
                                          TableCell(''),
                                        ]),TableRow( children: [
                                          TableCell('untitled 1'),
                                          TableCell(""),
                                          TableCell(''),
                                        ]),TableRow( children: [
                                          TableCell('untitled 1'),
                                          TableCell(""),
                                          TableCell(''),
                                        ]),TableRow( children: [
                                          TableCell('untitled 1'),
                                          TableCell(""),
                                          TableCell(''),
                                        ]),TableRow( children: [
                                          TableCell('untitled 1'),
                                          TableCell(""),
                                          TableCell(''),
                                        ]),TableRow( children: [
                                          TableCell('untitled 1'),
                                          TableCell(""),
                                          TableCell(''),
                                        ]),TableRow( children: [
                                          TableCell('untitled 1'),
                                          TableCell(""),
                                          TableCell(''),
                                        ]),TableRow( children: [
                                          TableCell('untitled 1'),
                                          TableCell(""),
                                          TableCell(''),
                                        ]),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(height: 20.0,),
                            HeadingText(txt: 'Recently Opened'),
                            SizedBox(height: 20.0,),
                            Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: _borderColor,
                                  ),
                                ),
                                width: 200.0,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 150.0,
                                      decoration: BoxDecoration(
                                        border: Border.all(),
                                      ),
                                      child: Image.asset('images/template_sample.png',),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(height: 20.0,),
                                  HeadingText(txt: 'My Library'),
                                  CustomButton('Import', () {}),
                                  CustomButton('Directory', () {}),
                                  CustomButton('Video', () {}),
                                  CustomButton('Images', () {}),
                                  CustomButton('Voice', () {}),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      width: 200,
                    ),
                    SizedBox(width: 20.0,),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                height: 80.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomButton('Book Builder',
                        () {
                          Navigator.of(context).pushNamed("/bookbuilder");
                        }
                    ),
                    CustomButton('Tutorials', () async {
                      const url = 'https://www.enriched.online/watch-it-work/';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    }),
                    CustomButton('Buy Credits', () async {
                      const url = 'https://www.enriched.online/my-wallet/';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    }),
                    CustomButton('Flip Pages', () {}),
                    CustomButton('Products Page', () async {
                      const url = 'https://www.enriched.online/products-directory/';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    }),
                  ],
                ),
              ),
              SizedBox(height: 50.0,),
            ],
          ),
        ),
      ),
    );
  }

  /*
    Widget TableCell(String txt)
    Author: Sophie(bolesalavb@gmail.com)
    Created Date & Time:  Aug 15 2020 7:45 PM

    Widget: TableCell
    Parameters: txt(String) - Text in cell of table

    Return: Padding
   */
  Widget TableCell(String txt) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 10.0
      ),
      child: Text(txt,
        textAlign: TextAlign.center,
      ),
    );
  }

  /*
    Widget CustomButton(String txt)
    Author: Sophie(bolesalavb@gmail.com)
    Created Date & Time:  Aug 15 2020 8:08 PM

    Widget: CustomButton
    Parameters: txt(String) - Text in button
    Return: FlatButton
   */
  Widget CustomButton(String txt, Function func) {
    return FlatButton(
      color: Theme.of(context).primaryColor,
      textColor: Colors.black,
      hoverColor: Colors.white,
      disabledColor: Colors.grey,
      disabledTextColor: Colors.black,
      padding: EdgeInsets.all(8.0),
      splashColor: Colors.grey,
      onPressed: () {
        func();
      },
      child: Text(txt,
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }

  /*
    Widget CustomButton(String txt)
    Author: Sophie(bolesalavb@gmail.com)
    Created Date & Time:  Aug 15 2020 8:08 PM

    Widget: CustomButton
    Parameters: txt(String) - Text in button
    Return: FlatButton
   */
  Widget LinkButton(String txt, String url) {
    return Link(
//      child: FlatButton(
//        color: Theme.of(context).primaryColor,
//        textColor: Colors.black,
//        hoverColor: Colors.white,
//        disabledColor: Colors.grey,
//        disabledTextColor: Colors.black,
//        padding: EdgeInsets.all(8.0),
//        splashColor: Colors.grey,
//        onPressed: () {
//          //
//        },
        child: Text(txt,
          style: TextStyle(fontSize: 20.0),
        ),
//      ),
      url: url,
      onError: _showErrorSnackBar,
    );
  }
}

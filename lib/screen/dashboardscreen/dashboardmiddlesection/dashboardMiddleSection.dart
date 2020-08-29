import 'package:enriched_digital_writer/widget/HeadingText.dart';
import 'package:flutter/material.dart';

import 'RecentlyOpenedSection.dart';
import 'completedTemplateLibrary.dart';

class DashboardMiddleSection extends StatefulWidget {

  final List templateData;
  final Map recentlyOpenedTemplate;

  DashboardMiddleSection({Key key,
    this.templateData,
    this.recentlyOpenedTemplate,
  }) : super(key: key);

  @override
  _DashboardMiddleSectionState createState() => _DashboardMiddleSectionState();
}

class _DashboardMiddleSectionState extends State<DashboardMiddleSection> {

  final ScrollController _newTemplateScrollController = ScrollController();

  final Color _borderColor = Colors.grey;

  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
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
                        controller: _newTemplateScrollController,
                        child: SingleChildScrollView(
                          controller: _newTemplateScrollController,
                          scrollDirection: Axis.vertical,
                          child: Table(
                            defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
                            children: [
                              TableRow(children: [
                                TableCell(
                                  'T1h) An Adult - 30, maybe 40 or something',
                                ),
                                TableCell(
                                  "T6c) Boy - it's a boy - a very special little boy in...",
                                ),
                                TableCell(
                                  'eBC19) Rectangle landspace single...',
                                ),
                              ]),
                              TableRow(children: [
                                TableCell(
                                  'T1h) An Adult - 30, maybe 40 or something',
                                ),
                                TableCell(
                                  "T6c) Boy - it's a boy - a very special little boy in...",
                                ),
                                TableCell(
                                  'eBC19) Rectangle landspace single...',
                                ),
                              ]),
                              TableRow(children: [
                                TableCell(
                                  'T1h) An Adult - 30, maybe 40 or something',
                                ),
                                TableCell(
                                  "T6c) Boy - it's a boy - a very special little boy in...",
                                ),
                                TableCell(
                                  'eBC19) Rectangle landspace single...',
                                ),
                              ]),
                              TableRow(children: [
                                TableCell(
                                  'T1h) An Adult - 30, maybe 40 or something',
                                ),
                                TableCell(
                                  "T6c) Boy - it's a boy - a very special little boy in...",
                                ),
                                TableCell(
                                  'eBC19) Rectangle landspace single...',
                                ),
                              ]),
                              TableRow(children: [
                                TableCell(
                                  'T1h) An Adult - 30, maybe 40 or something',
                                ),
                                TableCell(
                                  "T6c) Boy - it's a boy - a very special little boy in...",
                                ),
                                TableCell(
                                  'eBC19) Rectangle landspace single...',
                                ),
                              ]),
                              TableRow(children: [
                                TableCell(
                                  'T1h) An Adult - 30, maybe 40 or something',
                                ),
                                TableCell(
                                  "T6c) Boy - it's a boy - a very special little boy in...",
                                ),
                                TableCell(
                                  'eBC19) Rectangle landspace single...',
                                ),
                              ]),
                              TableRow(children: [
                                TableCell(
                                  'T1h) An Adult - 30, maybe 40 or something',
                                ),
                                TableCell(
                                  "T6c) Boy - it's a boy - a very special little boy in...",
                                ),
                                TableCell(
                                  'eBC19) Rectangle landspace single...',
                                ),
                              ]),
                              TableRow(children: [
                                TableCell(
                                  'T1h) An Adult - 30, maybe 40 or something',
                                ),
                                TableCell(
                                  "T6c) Boy - it's a boy - a very special little boy in...",
                                ),
                                TableCell(
                                  'eBC19) Rectangle landspace single...',
                                ),
                              ]),
                              TableRow(children: [
                                TableCell(
                                  'T1h) An Adult - 30, maybe 40 or something',
                                ),
                                TableCell(
                                  "T6c) Boy - it's a boy - a very special little boy in...",
                                ),
                                TableCell(
                                  'eBC19) Rectangle landspace single...',
                                ),
                              ]),
                              TableRow(children: [
                                TableCell(
                                  'T1h) An Adult - 30, maybe 40 or something',
                                ),
                                TableCell(
                                  "T6c) Boy - it's a boy - a very special little boy in...",
                                ),
                                TableCell(
                                  'eBC19) Rectangle landspace single...',
                                ),
                              ]),
                              TableRow(children: [
                                TableCell(
                                  'T1h) An Adult - 30, maybe 40 or something',
                                ),
                                TableCell(
                                  "T6c) Boy - it's a boy - a very special little boy in...",
                                ),
                                TableCell(
                                  'eBC19) Rectangle landspace single...',
                                ),
                              ]),
                              TableRow(children: [
                                TableCell(
                                  'T1h) An Adult - 30, maybe 40 or something',
                                ),
                                TableCell(
                                  "T6c) Boy - it's a boy - a very special little boy in...",
                                ),
                                TableCell(
                                  'eBC19) Rectangle landspace single...',
                                ),
                              ]),
                              TableRow(children: [
                                TableCell(
                                  'T1h) An Adult - 30, maybe 40 or something',
                                ),
                                TableCell(
                                  "T6c) Boy - it's a boy - a very special little boy in...",
                                ),
                                TableCell(
                                  'eBC19) Rectangle landspace single...',
                                ),
                              ]),
                              TableRow(children: [
                                TableCell(
                                  'T1h) An Adult - 30, maybe 40 or something',
                                ),
                                TableCell(
                                  "T6c) Boy - it's a boy - a very special little boy in...",
                                ),
                                TableCell(
                                  'eBC19) Rectangle landspace single...',
                                ),
                              ]),
                              TableRow(children: [
                                TableCell(
                                  'T1h) An Adult - 30, maybe 40 or something',
                                ),
                                TableCell(
                                  "T6c) Boy - it's a boy - a very special little boy in...",
                                ),
                                TableCell(
                                  'eBC19) Rectangle landspace single...',
                                ),
                              ]),
                              TableRow(children: [
                                TableCell(
                                  'T1h) An Adult - 30, maybe 40 or something',
                                ),
                                TableCell(
                                  "T6c) Boy - it's a boy - a very special little boy in...",
                                ),
                                TableCell(
                                  'eBC19) Rectangle landspace single...',
                                ),
                              ]),
                              TableRow(children: [
                                TableCell(
                                  'T1h) An Adult - 30, maybe 40 or something',
                                ),
                                TableCell(
                                  "T6c) Boy - it's a boy - a very special little boy in...",
                                ),
                                TableCell(
                                  'eBC19) Rectangle landspace single...',
                                ),
                              ]),
                              TableRow(children: [
                                TableCell(
                                  'T1h) An Adult - 30, maybe 40 or something',
                                ),
                                TableCell(
                                  "T6c) Boy - it's a boy - a very special little boy in...",
                                ),
                                TableCell(
                                  'eBC19) Rectangle landspace single...',
                                ),
                              ]),
                              TableRow(children: [
                                TableCell(
                                  'T1h) An Adult - 30, maybe 40 or something',
                                ),
                                TableCell(
                                  "T6c) Boy - it's a boy - a very special little boy in...",
                                ),
                                TableCell(
                                  'eBC19) Rectangle landspace single...',
                                ),
                              ]),
                              TableRow(children: [
                                TableCell(
                                  'T1h) An Adult - 30, maybe 40 or something',
                                ),
                                TableCell(
                                  "T6c) Boy - it's a boy - a very special little boy in...",
                                ),
                                TableCell(
                                  'eBC19) Rectangle landspace single...',
                                ),
                              ]),
                              TableRow(children: [
                                TableCell(
                                  'T1h) An Adult - 30, maybe 40 or something',
                                ),
                                TableCell(
                                  "T6c) Boy - it's a boy - a very special little boy in...",
                                ),
                                TableCell(
                                  'eBC19) Rectangle landspace single...',
                                ),
                              ]),
                              TableRow(children: [
                                TableCell(
                                  'T1h) An Adult - 30, maybe 40 or something',
                                ),
                                TableCell(
                                  "T6c) Boy - it's a boy - a very special little boy in...",
                                ),
                                TableCell(
                                  'eBC19) Rectangle landspace single...',
                                ),
                              ]),
                              TableRow(children: [
                                TableCell(
                                  'T1h) An Adult - 30, maybe 40 or something',
                                ),
                                TableCell(
                                  "T6c) Boy - it's a boy - a very special little boy in...",
                                ),
                                TableCell(
                                  'eBC19) Rectangle landspace single...',
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
          CompletedTemplateLibrary(templateData: widget.templateData,),
          Container(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  HeadingText(txt: 'Recently Opened'),
                  SizedBox(
                    height: 20.0,
                  ),
                  RecentlyOpenedSection(
                    recentlyOpenedTemplate: widget.recentlyOpenedTemplate,
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: 20.0,
                        ),
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
          SizedBox(
            width: 20.0,
          ),
        ],
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
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child: Text(
        txt,
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
      child: Text(
        txt,
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }
}
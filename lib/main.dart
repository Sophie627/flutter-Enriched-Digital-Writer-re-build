import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.grey[300],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 40.0,
            child: Image.asset('images/logo.png',
            fit: BoxFit.fitHeight,
          ),
          decoration: BoxDecoration(
            border: Border.all(),
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        shadowColor: Theme.of(context).primaryColor,
        actions: [
          CustomButton('Close'),
          SizedBox(
            width: 30.0,
          ),
          CustomButton('My Account'),
          SizedBox(
            width: 30.0,
          ),
          CustomButton('Forum'),
          SizedBox(
            width: 30.0,
          ),
        ],
      ),
      body: Center(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(height: 20,),
                            HeaderText('New Template Library'),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(20.0),
                                padding: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.black,
                                  ),
                                ),
                                child: Scrollbar(
//                                  isAlwaysShown: true,
                                  child: SingleChildScrollView(
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
                            HeaderText('Completed Template Library'),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                                margin: EdgeInsets.all(20.0),
                                padding: EdgeInsets.all(10.0),
                                child: Scrollbar(
                                  child: SingleChildScrollView(
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
                            HeaderText('Recently Opened'),
                            SizedBox(height: 20.0,),
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.white,
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
                                  CustomButton('My Library'),
                                  CustomButton('Import'),
                                  CustomButton('Directory'),
                                  CustomButton('Video'),
                                  CustomButton('Images'),
                                  CustomButton('Voice'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      width: 200,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                height: 80.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomButton('Book Builder'),
                    CustomButton('Tutorials'),
                    CustomButton('Buy Credits'),
                    CustomButton('Flip Pages'),
                    CustomButton('Products Page'),
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
  Widget CustomButton(String txt) {
    return FlatButton(
      color: Theme.of(context).primaryColor,
      textColor: Colors.black,
      hoverColor: Colors.white,
      disabledColor: Colors.grey,
      disabledTextColor: Colors.black,
      padding: EdgeInsets.all(8.0),
      splashColor: Colors.grey,
      onPressed: () {
        /*...*/
      },
      child: Text(txt,
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }

  /*
    Widget HeaderText(String txt)
    Author: Sophie(bolesalavb@gmail.com)
    Created Date & Time:  Aug 15 2020 8:43PM

    Widget: HeaderText
    Description:  Text with Header style
    Parameters: txt(String) - content of header text
    Return: Text
   */
  Widget HeaderText(String txt) {
    return Text(txt,
      style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
      ),
    );
  }
}

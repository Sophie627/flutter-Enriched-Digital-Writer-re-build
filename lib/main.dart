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
        title: Image.asset('images/logo.png'),
        backgroundColor: Colors.white,
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
                        color: Colors.grey[300],
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
                            ]),
                          ],
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
                    Container(
                      margin: EdgeInsets.all(20.0),
                      padding: EdgeInsets.all(10.0),
                      child: Table(
                        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                        children: [
                          TableRow( children: [
                            TableCell('untitled 1'),
                            TableCell(""),
                            TableCell(''),
                          ]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 23.0,),
                    Text('Recently Opened',
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                    SizedBox(height: 23.0,),
                    Expanded(
                      child: Container(
                        color: Colors.grey[300],
                        child: Image.asset('images/template_sample.png'),
                      ),
                    ),
                    CustomButton('My Library'),
                    CustomButton('Import'),
                    CustomButton('Directory'),
                    CustomButton('Video'),
                    CustomButton('Images'),
                    CustomButton('Voice'),
                  ],
                ),
              ),
              width: 150,
            ),
          ],
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
      color: Colors.white,
      textColor: Colors.black,
      hoverColor: Colors.grey[300],
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

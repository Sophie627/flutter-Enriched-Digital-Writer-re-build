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
          FlatButton(
            color: Colors.white,
            textColor: Colors.black,
            hoverColor: Colors.grey,
            disabledColor: Colors.grey,
            disabledTextColor: Colors.black,
            padding: EdgeInsets.all(8.0),
            splashColor: Colors.grey,
            onPressed: () {
              /*...*/
            },
            child: Text(
              "Close",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          SizedBox(
            width: 30.0,
          ),
          FlatButton(
            color: Colors.white,
            textColor: Colors.black,
            hoverColor: Colors.grey,
            disabledColor: Colors.grey,
            disabledTextColor: Colors.black,
            padding: EdgeInsets.all(8.0),
            splashColor: Colors.grey,
            onPressed: () {
              /*...*/
            },
            child: Text(
              "My Account",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          SizedBox(
            width: 30.0,
          ),
          FlatButton(
            color: Colors.white,
            textColor: Colors.black,
            hoverColor: Colors.grey,
            disabledColor: Colors.grey,
            disabledTextColor: Colors.black,
            padding: EdgeInsets.all(8.0),
            splashColor: Colors.grey,
            onPressed: () {
              /*...*/
            },
            child: Text(
              "Forum",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
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
                    Text('New Template Library',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
//                    SizedBox(height: 20,),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(20.0),
                        padding: EdgeInsets.all(10.0),
                        color: Colors.grey,
                        child: Table(
                          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                          children: [
                            TableRow( children: [
                              _tableCell('T1h) An Adult - 30, maybe 40 or something',
                              ),
                              _tableCell("T6c) Boy - it's a boy - a very special little boy in...",
                              ),
                              _tableCell('eBC19) Rectangle landspace single...',
                              ),
                            ]),
                            TableRow( children: [
                              _tableCell('T1h) An Adult - 30, maybe 40 or something',
                              ),
                              _tableCell("T6c) Boy - it's a boy - a very special little boy in...",
                              ),
                              _tableCell('eBC19) Rectangle landspace single...',
                              ),
                            ]),
                            TableRow( children: [
                              _tableCell('T1h) An Adult - 30, maybe 40 or something',
                              ),
                              _tableCell("T6c) Boy - it's a boy - a very special little boy in...",
                              ),
                              _tableCell('eBC19) Rectangle landspace single...',
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
                    Text('Completed Template Library'),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Center(
                child: Row(
                  children: [
                    Text('Recently Opened'),
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
    Widget _tableCell(String txt)
    Author: Sophie(bolesalavb@gmail.com)
    Created Date & Time:  Aug 15 2020 7:45 PM

    Widget: _tableCell
    Parameters: txt(String) - Text in cell of table

    Return: Padding
   */
  Widget _tableCell(String txt) {
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
}

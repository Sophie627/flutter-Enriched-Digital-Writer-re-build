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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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
                    Text('New Template Library'),
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
}

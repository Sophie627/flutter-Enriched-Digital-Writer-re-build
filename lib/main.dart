import 'package:enriched_digital_writer/screen/bookbuilderScreen.dart';
import 'package:enriched_digital_writer/screen/canvasscreen/canvasScreen.dart';
import 'package:enriched_digital_writer/screen/dashboardScreen.dart';
import 'package:enriched_digital_writer/screen/filppagescreen/flippageScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Enriched Digital Writer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.grey[300],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: <String, WidgetBuilder>{
        '/dashboard': (BuildContext context) => new DashboardScreen(),
        '/canvas': (BuildContext context) => new CanvasScreen(),
        '/bookbuilder': (BuildContext context) => new BookBuilderScreen(),
        '/flippage': (BuildContext context) => new FlipPageScreen(),
      },
      home: DashboardScreen(),
    );
  }
}

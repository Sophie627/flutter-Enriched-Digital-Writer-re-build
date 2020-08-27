import 'package:enriched_digital_writer/routes.dart';
import 'package:enriched_digital_writer/screen/dashboardscreen/dashboardScreen.dart';
import 'package:flutter/material.dart';

void main() {
  FluroRouter.setupRouter();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Enriched Digital Writer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color.fromRGBO(232, 232, 232, 1.0),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: FluroRouter.router.generator,
      home: DashboardScreen(),
    );
  }
}

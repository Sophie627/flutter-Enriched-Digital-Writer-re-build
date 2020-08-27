import 'package:enriched_digital_writer/screen/bookbuilderScreen.dart';
import 'package:enriched_digital_writer/screen/canvasscreen/canvasScreen.dart';
import 'package:enriched_digital_writer/screen/dashboardscreen/dashboardScreen.dart';
import 'package:enriched_digital_writer/screen/filppagescreen/flippageScreen.dart';
import 'package:fluro/fluro.dart' as fluro;
import 'package:flutter/material.dart';

class FluroRouter {
  static fluro.Router router = fluro.Router();
  static fluro.Handler _templatehandler = fluro.Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          CanvasScreen(templateID: params['id'][0]));
  static fluro.Handler _dashboardhandler = fluro.Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          DashboardScreen());
  static fluro.Handler _bookbuilderhandler = fluro.Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          BookBuilderScreen());
  static fluro.Handler _flippagehandler = fluro.Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          FlipPageScreen());
  static void setupRouter() {
    router.define(
      '/dashboard',
      handler: _dashboardhandler,
    );
    router.define(
      '/bookbuilder',
      handler: _bookbuilderhandler,
    );
    router.define(
      '/flippage',
      handler: _flippagehandler,
    );
    router.define(
      '/template/:id',
      handler: _templatehandler,
    );
  }
}
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:enriched_digital_writer/screen/dashboardscreen/dashboardBottomSection.dart';
import 'package:enriched_digital_writer/screen/dashboardscreen/dashboardMiddleSection.dart';
import 'package:flutter/material.dart';
import 'dashboardTopSection.dart';

class DashboardScreen extends StatefulWidget {
  DashboardScreen({Key key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  bool _isLoadingTemplate = true;
  List _templateData = [];
  bool _isLoadingRecentlyOpenedTemplate = true;
  Map _recentlyOpenedTemplate = {
    'id': '',
    'data': [],
  };

  /*
    fetchTemplateData() async
    Author: Sophie(bolesalavb@gmail.com)
    Created Date & Time: Aug 27 2020 10:23 PM

    Function: fetchTemplateData

    Description:  Using this function, Data related to 'templates' can be gotten from firebase.
  */
  fetchTemplateData() async {
    FirebaseFirestore.instance
        .collection('templates')
        .snapshots()
        .listen((data) => {
              setState(() {
                _templateData = [];
                _isLoadingTemplate = true;
              }),
              data.docs.forEach((doc) => _templateData.add({
                    'id': doc.id,
                    'data': doc.data(),
                  })),
              setState(() {
                _templateData = _templateData;
                _isLoadingTemplate = false;
              }),
            });
  }

  fetchRecentlyOpenTemplateData() async {
    FirebaseFirestore.instance
        .collection('templates')
        .orderBy('lastOpenedDate', descending: true)
        .snapshots()
        .listen((data) => {
              setState(() {
                _recentlyOpenedTemplate = {
                  'id': data.docs[0].id,
                  'data': data.docs[0].data(),
                };
                _isLoadingRecentlyOpenedTemplate = false;
              }),
            });
  }

  @override
  void initState() {
    super.initState();

    fetchTemplateData();
    fetchRecentlyOpenTemplateData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isLoadingTemplate || _isLoadingRecentlyOpenedTemplate
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Center(
              child: Container(
                color: Theme.of(context).primaryColor,
                child: Column(
                  children: [
                    dashboardTopSection,
                    DashboardMiddleSection(
                      templateData: _templateData,
                      recentlyOpenedTemplate: _recentlyOpenedTemplate,
                    ),
                    DashboardBottomSection(),
                    SizedBox(
                      height: 50.0,
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}

/*
    class CustomTable extends StatefulWidget
    Author: Sophie(bolesalavb@gmail.com)
    Created Date & Time:  Aug 18 2020 9:22 PM

    Class: CustomTable
    Description:  Customized FlatButton for this app
                  txt(String) - Text in button
   */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTable extends StatefulWidget {
  final int rowCount;
  final List<Widget> children;

  CustomTable({
    this.rowCount = 3,
    this.children,
  });

  _CustomTableState createState() => _CustomTableState();
}

class _CustomTableState extends State<CustomTable> {

  final List<TableRow> _tableRowChildren = [];

  @override
  Widget build(BuildContext context) {


    void buildTableRowChildren() {
      if(widget.children.length == 0) {
        this._tableRowChildren.add(
          TableRow(
            children: [
              Text("No data"),
            ],
          )
        );
      } else {
        var i = 0;
        List<Widget> _tempList = [];
        for (var child in widget.children) {
          if (i % widget.rowCount == 0) {
            this._tableRowChildren.add(
              TableRow(
                children: _tempList,
              )
            );
            _tempList = [];
          }
          _tempList.add(child);
          i++;
        }
        this._tableRowChildren.add(
            TableRow(
              children: _tempList,
            )
        );
      }
    }

    @override
    void initState() {
      super.initState();
      buildTableRowChildren();
    }

    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: this._tableRowChildren,
    );
  }
}

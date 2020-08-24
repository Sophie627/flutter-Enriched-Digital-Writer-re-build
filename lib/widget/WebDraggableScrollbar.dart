import 'package:flutter/material.dart';

class WebDraggableScrollbar extends StatefulWidget {
  final double heightScrollThumb;
  final Widget child;
  final ScrollController controller;
  final Color scrollbarBorderColor;
  final Color scrollbarBackgroundColor;
  final Color scrollbarColor;

  WebDraggableScrollbar({
      this.heightScrollThumb = 40.0,
      this.child,
      this.controller,
      this.scrollbarBorderColor = Colors.grey,
      this.scrollbarBackgroundColor = Colors.white,
      this.scrollbarColor = Colors.black,
  });

  @override
  _WebDraggableScrollbarState createState() => new _WebDraggableScrollbarState();
}

class _WebDraggableScrollbarState extends State<WebDraggableScrollbar> {
  //this counts offset for scroll thumb in Vertical axis
  double _barOffset;
  //this counts offset for list in Vertical axis
  double _viewOffset;
  @override
  void initState() {
    super.initState();
    _barOffset = 0.0;
    _viewOffset = 0.0;
  }

  //if list takes 300.0 pixels of height on screen and scrollthumb height is 40.0
  //then max bar offset is 260.0
  double get barMaxScrollExtent =>
      context.size.height - widget.heightScrollThumb;
  double get barMinScrollExtent => 0.0;

  //this is usually lenght (in pixels) of list
  //if list has 1000 items of 100.0 pixels each, maxScrollExtent is 100,000.0 pixels
  double get viewMaxScrollExtent => widget.controller.position.maxScrollExtent;
  //this is usually 0.0
  double get viewMinScrollExtent => widget.controller.position.minScrollExtent;

  double get scrollbarHeight => barMaxScrollExtent * barMaxScrollExtent / viewMaxScrollExtent;

  double getScrollViewDelta(
      double barDelta,
      double barMaxScrollExtent,
      double viewMaxScrollExtent,
      ) { //propotion
    return barDelta * viewMaxScrollExtent / barMaxScrollExtent;
  }

  void _onVerticalDragUpdate(DragUpdateDetails details) {
    setState(() {
      _barOffset += details.delta.dy;

      if (_barOffset < barMinScrollExtent) {
        _barOffset = barMinScrollExtent;
      }
      if (_barOffset > barMaxScrollExtent) {
        _barOffset = barMaxScrollExtent;
      }

      double viewDelta = getScrollViewDelta(
          details.delta.dy, barMaxScrollExtent, viewMaxScrollExtent);

      _viewOffset = widget.controller.position.pixels + viewDelta;
      if (_viewOffset < widget.controller.position.minScrollExtent) {
        _viewOffset = widget.controller.position.minScrollExtent;
      }
      if (_viewOffset > viewMaxScrollExtent) {
        _viewOffset = viewMaxScrollExtent;
      }
      widget.controller.jumpTo(_viewOffset);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Stack(children: <Widget>[
      NotificationListener(
        onNotification: (t) {
          if (t is ScrollUpdateNotification) {
            setState(() {
              _barOffset = widget.controller.position.pixels / viewMaxScrollExtent * barMaxScrollExtent;
            });
          }
        },
        child: widget.child,
      ),
      Container(
        decoration: BoxDecoration(
          color: widget.scrollbarBackgroundColor,
          border: Border.all(
            color: widget.scrollbarBorderColor,
          ),
        ),
        width: 20.0,
        height: double.infinity,
        child: GestureDetector(
          onVerticalDragUpdate: _onVerticalDragUpdate,
          child: Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: _barOffset),
              child: _buildScrollThumb()),
        ),
      ),
    ]);
  }

  Widget _buildScrollThumb() {
    return new Container(
      height: widget.heightScrollThumb,
      width: 2.0,
      color: widget.scrollbarColor,
    );
  }
}
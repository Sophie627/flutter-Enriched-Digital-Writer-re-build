import 'package:flutter/material.dart';

class WebDraggableScrollbar extends StatefulWidget {
  final double heightScrollThumb;
  final Widget child;
  final ScrollController controller;
  final Color scrollbarBorderColor;
  final Color scrollbarBackgroundColor;
  final Color scrollbarColor;
  final Color scrollbarHoverColor;
  final String scrollPosition;

  WebDraggableScrollbar({
      this.heightScrollThumb = 100.0,
      this.child,
      this.controller,
      this.scrollbarBorderColor = Colors.grey,
      this.scrollbarBackgroundColor = Colors.white,
      this.scrollbarColor = Colors.black,
      this.scrollbarHoverColor = Colors.black,
      this.scrollPosition = 'right',
  });

  @override
  _WebDraggableScrollbarState createState() => new _WebDraggableScrollbarState();
}

class _WebDraggableScrollbarState extends State<WebDraggableScrollbar> {

  final double scrollbarWidth = 20.0;
  //this counts offset for scroll thumb in Vertical axis
  double _barOffset;
  //this counts offset for list in Vertical axis
  double _viewOffset;
  //variable to track when scrollbar is dragged
  bool _isDragInProcess;

  @override
  void initState() {
    super.initState();
    _barOffset = 0.0;
    _viewOffset = 0.0;
    _isDragInProcess = false;
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

  double getScrollViewDelta(
      double barDelta,
      double barMaxScrollExtent,
      double viewMaxScrollExtent,
      ) {//propotion
    return barDelta * viewMaxScrollExtent / barMaxScrollExtent;
  }

  double getBarDelta(
      double scrollViewDelta,
      double barMaxScrollExtent,
      double viewMaxScrollExtent,
      ) {//propotion
    return scrollViewDelta * barMaxScrollExtent / viewMaxScrollExtent;
  }

  void _onVerticalDragStart(DragStartDetails details) {
    setState(() {
      _isDragInProcess = true;
    });
  }

  void _onVerticalDragEnd(DragEndDetails details) {
    setState(() {
      _isDragInProcess = false;
    });
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

  //this function process events when scroll controller changes it's position
  //by scrollController.jumpTo or scrollController.animateTo functions.
  //It can be when user scrolls, drags scrollbar (see line 139)
  //or any other manipulation with scrollController outside this widget
  changePosition(ScrollNotification notification) {
    //if notification was fired when user drags we don't need to update scrollThumb position
    if (_isDragInProcess) {
      return;
    }

    setState(() {
      if (notification is ScrollUpdateNotification) {
        _barOffset += getBarDelta(
          notification.scrollDelta,
          barMaxScrollExtent,
          viewMaxScrollExtent,
        );

        if (_barOffset < barMinScrollExtent) {
          _barOffset = barMinScrollExtent;
        }
        if (_barOffset > barMaxScrollExtent) {
          _barOffset = barMaxScrollExtent;
        }

        _viewOffset += notification.scrollDelta;
        if (_viewOffset < widget.controller.position.minScrollExtent) {
          _viewOffset = widget.controller.position.minScrollExtent;
        }
        if (_viewOffset > viewMaxScrollExtent) {
          _viewOffset = viewMaxScrollExtent;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
//    SchedulerBinding.instance.addPostFrameCallback((_) {
//      print('---------------');
//      print(context.size.height);
//      print(widget.controller.position.runtimeType);
//    });

    return NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification notification) {
          changePosition(notification);
        },
        child: new Stack(children: <Widget>[
          widget.child,
          Align(
            alignment: widget.scrollPosition == 'right' ? Alignment.centerRight : Alignment.centerLeft,
            child: Container(
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
                onVerticalDragStart: _onVerticalDragStart,
                onVerticalDragEnd: _onVerticalDragEnd,
                child: Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: _barOffset),
                    child: BuildScrollThumb(
                      scrollbarColor: widget.scrollbarColor,
                      heightScrollThumb: widget.heightScrollThumb,
                      scrollbarHoverColor: widget.scrollbarHoverColor,
                    )),
              ),
            ),
          ),
        ]
      )
    );
  }
}

class BuildScrollThumb extends StatefulWidget {
  final Color scrollbarColor;
  final Color scrollbarHoverColor;
  final double heightScrollThumb;

  BuildScrollThumb({
    this.scrollbarColor,
    this.scrollbarHoverColor = Colors.black,
    this.heightScrollThumb,
  });

  @override
  _BuildScrollThumbState createState() => new _BuildScrollThumbState();
}

class _BuildScrollThumbState extends State<BuildScrollThumb> {

  bool _isHover = false;

  void _onHover(PointerEvent details) {
    setState(() {
      _isHover = true;
    });
  }

  void _onEnter(PointerEvent details) {
    setState(() {
      _isHover = true;
    });
  }

  void _onExit(PointerEvent details) {
    setState(() {
      _isHover = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: _onHover,
      onEnter: _onEnter,
      onExit: _onExit,
      child: Container(
        height: widget.heightScrollThumb,
        width: 10.0,
        color: _isHover ? widget.scrollbarHoverColor : widget.scrollbarColor,
      ),
    );
  }
}
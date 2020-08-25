import 'package:flutter/material.dart';

class WebBidirectionScrollbar extends StatefulWidget {
  final double widthHorizontalScrollThumb;
  final double heightVerticalScrollThumb;
  final Widget child;
  final ScrollController horizontalController;
  final ScrollController verticalController;
  final Color scrollbarBorderColor;
  final Color scrollbarBackgroundColor;
  final Color scrollbarColor;
  final Color scrollbarHoverColor;

  WebBidirectionScrollbar({
    this.widthHorizontalScrollThumb = 100.0,
    this.heightVerticalScrollThumb = 100.0,
    this.child,
    this.horizontalController,
    this.verticalController,
    this.scrollbarBorderColor = Colors.grey,
    this.scrollbarBackgroundColor = Colors.white,
    this.scrollbarColor = Colors.black,
    this.scrollbarHoverColor = Colors.black,
  });

  @override
  _WebBidirectionScrollbarState createState() => new _WebBidirectionScrollbarState();
}

class _WebBidirectionScrollbarState extends State<WebBidirectionScrollbar> {

  double _horizontalBarOffset;
  double _verticalBarOffset;
  double _horizontalViewOffset;
  double _verticalViewOffset;
  bool _isHorizontalDragInProcess;
  bool _isVerticalDragInProcess;
  bool _isVerticalListener;

  @override
  void initState() {
    super.initState();
    _horizontalBarOffset = 0.0;
    _verticalBarOffset = 0.0;
    _horizontalViewOffset = 0.0;
    _verticalViewOffset = 0.0;
    _isHorizontalDragInProcess = false;
    _isVerticalDragInProcess = false;
    _isVerticalListener = false;
  }

  double get horizontalBarMaxScrollExtent =>
      context.size.width - widget.widthHorizontalScrollThumb;
  double get horizontalBarMinScrollExtent => 0.0;

  double get verticalBarMaxScrollExtent =>
      context.size.height - widget.heightVerticalScrollThumb;
  double get verticalBarMinScrollExtent => 0.0;

  double get horizontalViewMaxScrollExtent => widget.horizontalController.position.maxScrollExtent;
  double get verticalViewMaxScrollExtent => widget.verticalController.position.maxScrollExtent;

  double get horizontalViewMinScrollExtent => widget.horizontalController.position.minScrollExtent;
  double get verticalViewMinScrollExtent => widget.verticalController.position.minScrollExtent;

  double getHorizontalScrollViewDelta(
      double horizontalBarDelta,
      double horizontalBarMaxScrollExtent,
      double horizontalViewMaxScrollExtent,
      ) {//propotion
    return horizontalBarDelta * horizontalViewMaxScrollExtent / horizontalBarMaxScrollExtent;
  }

  double getVerticalScrollViewDelta(
      double verticalBarDelta,
      double verticalBarMaxScrollExtent,
      double verticalViewMaxScrollExtent,
      ) {//propotion
    return verticalBarDelta * verticalViewMaxScrollExtent / verticalBarMaxScrollExtent;
  }

  double getHorizontalBarDelta(
      double horizontalscrollViewDelta,
      double horizontalBarMaxScrollExtent,
      double horizontalViewMaxScrollExtent,
      ) {//propotion
    return horizontalscrollViewDelta * horizontalBarMaxScrollExtent / horizontalViewMaxScrollExtent;
  }

  double getVerticalBarDelta(
      double verticalscrollViewDelta,
      double verticalBarMaxScrollExtent,
      double verticalViewMaxScrollExtent,
      ) {//propotion
    return verticalscrollViewDelta * verticalBarMaxScrollExtent / verticalViewMaxScrollExtent;
  }

  void _onHorizontalDragStart(DragStartDetails details) {
    setState(() {
      _isHorizontalDragInProcess = true;
    });
  }

  void _onVerticalDragStart(DragStartDetails details) {
    setState(() {
      _isVerticalDragInProcess = true;
    });
  }

  void _onHorizontalDragEnd(DragEndDetails details) {
    setState(() {
      _isHorizontalDragInProcess = false;
    });
  }

  void _onVerticalDragEnd(DragEndDetails details) {
    setState(() {
      _isVerticalDragInProcess = false;
    });
  }

  void _onHorizontalDragUpdate(DragUpdateDetails details) {
    setState(() {
      _horizontalBarOffset += details.delta.dx;

      if (_horizontalBarOffset < horizontalBarMinScrollExtent) {
        _horizontalBarOffset = horizontalBarMinScrollExtent;
      }
      if (_horizontalBarOffset > horizontalBarMaxScrollExtent) {
        _horizontalBarOffset = horizontalBarMaxScrollExtent;
      }

      double horizontalViewDelta = getHorizontalScrollViewDelta(
          details.delta.dx, horizontalBarMaxScrollExtent, horizontalViewMaxScrollExtent);

      _horizontalViewOffset = widget.horizontalController.position.pixels + horizontalViewDelta;
      if (_horizontalViewOffset < widget.horizontalController.position.minScrollExtent) {
        _horizontalViewOffset = widget.horizontalController.position.minScrollExtent;
      }
      if (_horizontalViewOffset > horizontalViewMaxScrollExtent) {
        _horizontalViewOffset = horizontalViewMaxScrollExtent;
      }
      widget.horizontalController.jumpTo(_horizontalViewOffset);
    });
  }

  void _onVerticalDragUpdate(DragUpdateDetails details) {
    setState(() {
      _verticalBarOffset += details.delta.dy;

      if (_verticalBarOffset < verticalBarMinScrollExtent) {
        _verticalBarOffset = verticalBarMinScrollExtent;
      }
      if (_verticalBarOffset > verticalBarMaxScrollExtent) {
        _verticalBarOffset = verticalBarMaxScrollExtent;
      }

      double verticalViewDelta = getVerticalScrollViewDelta(
          details.delta.dy, verticalBarMaxScrollExtent, verticalViewMaxScrollExtent);

      _verticalViewOffset = widget.verticalController.position.pixels + verticalViewDelta;
      if (_verticalViewOffset < widget.verticalController.position.minScrollExtent) {
        _verticalViewOffset = widget.verticalController.position.minScrollExtent;
      }
      if (_verticalViewOffset > verticalViewMaxScrollExtent) {
        _verticalViewOffset = verticalViewMaxScrollExtent;
      }
      widget.verticalController.jumpTo(_verticalViewOffset);
    });
  }

  changeHorizontalPosition(ScrollNotification notification) {
    if (_isHorizontalDragInProcess || _isVerticalDragInProcess || _isVerticalListener) {
      return;
    }

    setState(() {
      if (notification is ScrollUpdateNotification) {
        _horizontalBarOffset += getHorizontalBarDelta(
          notification.scrollDelta,
          horizontalBarMaxScrollExtent,
          horizontalViewMaxScrollExtent,
        );

        if (_horizontalBarOffset < horizontalBarMinScrollExtent) {
          _horizontalBarOffset = horizontalBarMinScrollExtent;
        }
        if (_horizontalBarOffset > horizontalBarMaxScrollExtent) {
          _horizontalBarOffset = horizontalBarMaxScrollExtent;
        }

        _horizontalViewOffset += notification.scrollDelta;
        if (_horizontalViewOffset < widget.horizontalController.position.minScrollExtent) {
          _horizontalViewOffset = widget.horizontalController.position.minScrollExtent;
        }
        if (_horizontalViewOffset > horizontalViewMaxScrollExtent) {
          _horizontalViewOffset = horizontalViewMaxScrollExtent;
        }
      }
    });
  }

  changeVerticalPosition(ScrollNotification notification) {
    if (_isVerticalDragInProcess || _isHorizontalDragInProcess) {
      return;
    }

    setState(() {
      if (notification is ScrollStartNotification) {
        _isVerticalListener = true;
      }
      if (notification is ScrollUpdateNotification) {
        _verticalBarOffset += getVerticalBarDelta(
          notification.scrollDelta,
          verticalBarMaxScrollExtent,
          verticalViewMaxScrollExtent,
        );

        if (_verticalBarOffset < verticalBarMinScrollExtent) {
          _verticalBarOffset = verticalBarMinScrollExtent;
        }
        if (_verticalBarOffset > verticalBarMaxScrollExtent) {
          _verticalBarOffset = verticalBarMaxScrollExtent;
        }

        _verticalViewOffset += notification.scrollDelta;
        if (_verticalViewOffset < widget.verticalController.position.minScrollExtent) {
          _verticalViewOffset = widget.verticalController.position.minScrollExtent;
        }
        if (_verticalViewOffset > verticalViewMaxScrollExtent) {
          _verticalViewOffset = verticalViewMaxScrollExtent;
        }
      }
      if (notification is ScrollEndNotification) {
        _isVerticalListener = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Stack(children: <Widget>[
      NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification notification) {
          changeHorizontalPosition(notification);
        },
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          controller: widget.horizontalController,
          child: NotificationListener<ScrollNotification>(
            onNotification: (ScrollNotification notification) {
              changeVerticalPosition(notification);
            },
            child: SingleChildScrollView(
              controller: widget.verticalController,
              child: widget.child,
            ),
          ),
        ),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          decoration: BoxDecoration(
            color: widget.scrollbarBackgroundColor,
            border: Border.all(
              color: widget.scrollbarBorderColor,
            ),
          ),
          height: 20.0,
          width: double.infinity,
          child: GestureDetector(
            onHorizontalDragUpdate: _onHorizontalDragUpdate,
            onHorizontalDragStart: _onHorizontalDragStart,
            onHorizontalDragEnd: _onHorizontalDragEnd,
            child: Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: _horizontalBarOffset),
              child: BuildScrollThumb(
                scrollbarColor: widget.scrollbarColor,
                scrollbarHoverColor: widget.scrollbarHoverColor,
                height: 10.0,
                width: widget.widthHorizontalScrollThumb,
              ),),
          ),
        ),
      ),
      Align(
        alignment: Alignment.centerRight,
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
                margin: EdgeInsets.only(top: _verticalBarOffset),
                child: BuildScrollThumb(
                  scrollbarColor: widget.scrollbarColor,
                  scrollbarHoverColor: widget.scrollbarHoverColor,
                  height: widget.heightVerticalScrollThumb,
                  width: 10.0,
                ),),
//                child: _buildVerticalScrollThumb()),
          ),
        ),
      ),
    ]);
  }

  Widget _buildHorizontalScrollThumb() {
    return new Container(
      width: widget.widthHorizontalScrollThumb,
      height: 10.0,
      color: widget.scrollbarColor,
    );
  }
  Widget _buildVerticalScrollThumb() {
    return new Container(
      height: widget.heightVerticalScrollThumb,
      width: 10.0,
      color: widget.scrollbarColor,
    );
  }
}

class BuildScrollThumb extends StatefulWidget {
  final Color scrollbarColor;
  final Color scrollbarHoverColor;
//  final double heightScrollThumb;
  final double height;
  final double width;

  BuildScrollThumb({
    this.scrollbarColor,
    this.scrollbarHoverColor = Colors.black,
//    this.heightScrollThumb,
    this.height,
    this.width,
  });

  @override
  _BuildScrollThumbState createState() => new _BuildScrollThumbState();
}

class _BuildScrollThumbState extends State<BuildScrollThumb> {

  bool _isHover = false;

  void _onHover(PointerEvent details) {
    print('hover');
  }

  void _onEnter(PointerEvent details) {
    print('enter');
    setState(() {
      _isHover = true;
    });
  }

  void _onExit(PointerEvent details) {
    print('exit');
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
        height: widget.height,
        width: widget.width,
        color: _isHover ? widget.scrollbarHoverColor : widget.scrollbarColor,
      ),
    );
  }
}
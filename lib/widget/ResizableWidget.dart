import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResizebleWidget extends StatefulWidget {
  ResizebleWidget({
    this.child,
    this.color = Colors.white,
    this.type = 'left',
  });

  final Widget child;
  final Color color;
  final String type;

  @override
  _ResizebleWidgetState createState() => _ResizebleWidgetState();
}

class _ResizebleWidgetState extends State<ResizebleWidget> {
  double height;
  double width = 200.0;

  void onDrag(double dx, double dy) {
    var newHeight = height + dy;
    var newWidth = width + dx;

    setState(() {
      height = newHeight > 0 ? newHeight : 0;
      width = newWidth > 0 ? newWidth : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.symmetric(vertical: BorderSide(
          width: 0,
          color: Colors.grey[400],
        )),
      ),
      height: height,
      width: width,
      child: widget.type == 'left'
      ? Row(
        children: [
          Expanded(
            child: Container(
              child: widget.child,
            ),
          ),
          Container(
            child: ManipulatingBall(
              type: widget.type,
              onDrag: (dx, dy) {
                var newWidth = width + dx;
                if (newWidth < 500.0 && newWidth > 200.0) {
                  setState(() {
                    width = newWidth > 0 ? newWidth : 0;
                  });
                }
              },
            ),
          ),
        ],
      )
      : Row(
        children: [
          Container(
            child: ManipulatingBall(
              type: widget.type,
              onDrag: (dx, dy) {
                var newWidth = width -dx ;

                if(newWidth < 500.0 && newWidth> 200.0) {
                  setState(() {
                    width = newWidth > 0 ? newWidth : 0;
                  });
                }
              },
            ),
          ),
          Expanded(
            child: Container(
              child: widget.child,
            ),
          ),
        ],
      ),
    );
  }
}

class ManipulatingBall extends StatefulWidget {
  ManipulatingBall({Key key, this.onDrag, this.type});

  final Function onDrag;
  final String type;

  @override
  _ManipulatingBallState createState() => _ManipulatingBallState();
}

class _ManipulatingBallState extends State<ManipulatingBall> {
  double initX;
  double initY;

  _handleDrag(details) {
    setState(() {
      initX = details.globalPosition.dx;
      initY = details.globalPosition.dy;
    });
  }

  _handleUpdate(details) {
    var dx = details.globalPosition.dx - initX;
    var dy = details.globalPosition.dy - initY;
    initX = details.globalPosition.dx;
    initY = details.globalPosition.dy;
    widget.onDrag(dx, dy);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanStart: _handleDrag,
      onPanUpdate: _handleUpdate,
      child: Container(
        height: MediaQuery.of(context).size.height - 56.0,
        child: Center(
          child: Image.asset("images/" + widget.type + ".png"),
        ),
      ),
    );
  }
}

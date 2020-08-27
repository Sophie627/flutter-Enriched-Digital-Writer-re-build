import 'package:flutter/material.dart';

class RecentlyOpenedSection extends StatefulWidget {

  final Map recentlyOpenedTemplate;

  RecentlyOpenedSection({Key key,
    this.recentlyOpenedTemplate,
  }) : super(key: key);

  @override
  _RecentlyOpenedSectionState createState() =>
      _RecentlyOpenedSectionState();
}

class _RecentlyOpenedSectionState extends State<RecentlyOpenedSection> {
  
  final Color _borderColor = Colors.grey;
  
  Widget build(BuildContext context) {
    print(widget.recentlyOpenedTemplate);
    return Expanded(
      flex: 1,
      child: Scrollbar(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: _borderColor,
              ),
            ),
            width: 200.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 15.0,),
                Container(
                  width: 150.0,
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  child: Image.asset(
                    'images/template_sample.png',
                  ),
                ),
                SizedBox(height: 10.0,),
                Center(
                  child: Container(
                    child: Text(widget.recentlyOpenedTemplate['data']['title']),
                  ),
                ),
                SizedBox(height: 10.0,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
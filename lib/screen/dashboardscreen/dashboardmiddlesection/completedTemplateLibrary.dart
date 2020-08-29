import 'package:enriched_digital_writer/firebase.dart';
import 'package:enriched_digital_writer/widget/HeadingText.dart';
import 'package:flutter/material.dart';

class CompletedTemplateLibrary extends StatefulWidget {
  final List templateData;

  CompletedTemplateLibrary({
    Key key,
    this.templateData,
  }) : super(key: key);

  @override
  _CompletedTemplateLibraryState createState() =>
      _CompletedTemplateLibraryState();
}

class _CompletedTemplateLibraryState extends State<CompletedTemplateLibrary> {
  final ScrollController _completedTemplateScrollController =
      ScrollController();

  final Color _borderColor = Colors.grey;

  Widget build(BuildContext context) {
    List<Widget> templateList = [];

    widget.templateData.forEach((element) => {
          templateList.add(FlatButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/template/${element['id']}");
              updateTemplateLastOpenedDate(element['id']);
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(20.0),
              child: Text(
                element['data']['title'],
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
          ))
        });

    return Expanded(
      flex: 1,
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            HeadingText(txt: 'Completed Template Library'),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: _borderColor,
                  ),
                ),
                margin: EdgeInsets.fromLTRB(0.0, 20.0, 20.0, 20.0),
                padding: EdgeInsets.all(10.0),
                child: Scrollbar(
                  isAlwaysShown: true,
                  controller: _completedTemplateScrollController,
                  child: SingleChildScrollView(
                    controller: _completedTemplateScrollController,
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: templateList,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
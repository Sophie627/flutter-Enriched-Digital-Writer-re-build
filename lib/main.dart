import 'package:enriched_digital_writer/widget/CustomButton.dart';
import 'package:enriched_digital_writer/widget/HeadingText.dart';
import 'package:enriched_digital_writer/widget/TemplatePreview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Enriched Digital Writer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.grey[300],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Row(
          children: [
            SizedBox(width: 20.0,),
            Expanded(
              child: Container(
                color: Theme.of(context).primaryColor,
                child: Column(
                  children: [
                    Container(
                      height: 80.0,
                      child: Center(
                        child: HeadingText(txt: "Move and Delete Your Pages To Compile"),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                        child: Scrollbar(
                          child: SingleChildScrollView(
                            child: Table(
                              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                              children: [
                                TableRow(
                                  children: [
                                    TemplatePreview(
                                      title: 'untitled',
                                      imagePath: 'images/template_sample.png',
                                    ),TemplatePreview(
                                      title: 'untitled',
                                      imagePath: 'images/template_sample.png',
                                    ),TemplatePreview(
                                      title: 'untitled',
                                      imagePath: 'images/template_sample.png',
                                    ),TemplatePreview(
                                      title: 'untitled',
                                      imagePath: 'images/template_sample.png',
                                    ),TemplatePreview(
                                      title: 'untitled',
                                      imagePath: 'images/template_sample.png',
                                    ),TemplatePreview(
                                      title: 'untitled',
                                      imagePath: 'images/template_sample.png',
                                    ),
                                  ],
                                ),TableRow(
                                  children: [
                                    TemplatePreview(
                                      title: 'untitled',
                                      imagePath: 'images/template_sample.png',
                                    ),TemplatePreview(
                                      title: 'untitled',
                                      imagePath: 'images/template_sample.png',
                                    ),TemplatePreview(
                                      title: 'untitled',
                                      imagePath: 'images/template_sample.png',
                                    ),TemplatePreview(
                                      title: 'untitled',
                                      imagePath: 'images/template_sample.png',
                                    ),TemplatePreview(
                                      title: 'untitled',
                                      imagePath: 'images/template_sample.png',
                                    ),TemplatePreview(
                                      title: 'untitled',
                                      imagePath: 'images/template_sample.png',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 81.0,
                      margin: EdgeInsets.only(right: 20.0,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          BookBuilderButton("Save to PDF",),
                          BookBuilderButton("Create Flip Book",),
                          BookBuilderButton("Back to Dashboard",),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 20.0,),
          ],
        ),
      ),
    );
  }

  Widget BookBuilderButton(String txt) {

    return Row(
      children: [
        SizedBox(width: 20.0,),
        CustomButton(txt: txt,),
      ],
    );
  }
}

import 'package:enriched_digital_writer/widget/DashboardButton.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DashboardBottomSection extends StatefulWidget {

  DashboardBottomSection({
    Key key,
  }) : super(key: key);

  @override
  _DashboardBottomSectionState createState() => _DashboardBottomSectionState();
}

class _DashboardBottomSectionState extends State<DashboardBottomSection> {
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      height: 80.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          DashboardButton(
              txt: 'UI Canvas',
              onPress: () {
                Navigator.of(context).pushNamed("/canvas");
              }),
          DashboardButton(
              txt: 'Book Builder',
              onPress: () {
                Navigator.of(context).pushNamed("/bookbuilder");
              }),
          DashboardButton(
              txt: 'Tutorials',
              onPress: () async {
                const url = 'https://www.enriched.online/watch-it-work/';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              }),
          DashboardButton(
              txt: 'Buy Credits',
              onPress: () async {
                const url = 'https://www.enriched.online/my-wallet/';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              }),
          DashboardButton(txt: 'Flip Pages', onPress: () {}),
          DashboardButton(
              txt: 'Products Page',
              onPress: () async {
                const url = 'https://www.enriched.online/products-directory/';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              }),
        ],
      ),
    );
  }
}

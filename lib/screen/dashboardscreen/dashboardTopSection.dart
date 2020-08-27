import 'package:enriched_digital_writer/widget/DashboardButton.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

Widget get dashboardTopSection => Container(
  height: 100.0,
  child: Row(
    children: [
      Container(
        margin: EdgeInsets.only(left: 40.0),
        height: 60.0,
        child: Image.asset(
          'images/logo.png',
          fit: BoxFit.fitHeight,
        ),
      ),
      Expanded(
        child: Container(),
      ),
//      DashboardButton(
//        txt: 'Close',
//        onPress: () {
//          SystemNavigator.pop();
//        }
//      ),
      SizedBox(
        width: 30.0,
      ),
      DashboardButton(
        txt: 'My Account',
        onPress: () async {
          const url =
              'https://www.enriched.online/my-account/woo-wallet/';
          if (await canLaunch(url)) {
            await launch(url);
          } else {
            throw 'Could not launch $url';
          }
        }
      ),
      SizedBox(
        width: 30.0,
      ),
      DashboardButton(
        txt: 'Forum',
        onPress: () async {
          const url =
              'https://www.enriched.online/members-page/members-forum-page/';
          if (await canLaunch(url)) {
            await launch(url);
          } else {
            throw 'Could not launch $url';
          }
        }
      ),
      SizedBox(
        width: 30.0,
      ),
    ],
  ),
);
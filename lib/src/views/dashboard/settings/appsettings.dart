import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:redid/src/styles/constants.dart';

class AppSettings extends StatefulWidget {
  const AppSettings({Key? key}) : super(key: key);
  static String tag = 'AppSettings';

  @override
  AppSettingsState createState() => AppSettingsState();
}

class AppSettingsState extends State<AppSettings> {
  bool lockInBackground = true;
  bool notificationsEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        automaticallyImplyLeading: false,
        centerTitle: true,
        toolbarHeight: 50,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: kBaseColor),
        leading: IconButton(
          icon: const FaIcon(FontAwesomeIcons.chevronCircleLeft),
          splashRadius: 25,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'App Settings',
          style: kAppBarTextStyle,
        ),
      ),
      backgroundColor: kBackgroundColor,
      body: Container(),
    );
  }
}

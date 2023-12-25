import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:redid/src/styles/constants.dart';

class LanguagesScreen extends StatefulWidget {
  const LanguagesScreen({Key? key}) : super(key: key);

  @override
  _LanguagesScreenState createState() => _LanguagesScreenState();
}

class _LanguagesScreenState extends State<LanguagesScreen> {
  int languageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        automaticallyImplyLeading: false,
        centerTitle: true,
        toolbarHeight: 50,
        elevation: 0,
        iconTheme: const IconThemeData(color: kBaseColor),
        leading: IconButton(
          icon: const FaIcon(FontAwesomeIcons.chevronCircleLeft),
          splashRadius: 25,
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Languages',
          style: kAppBarTextStyle,
        ),
      ),
      // body: SettingsList(
      //   sections: [
      //     SettingsSection(tiles: [
      //       SettingsTile(
      //         title: const Text("English"),
      //         leading: trailingWidget(0),
      //         onPressed: (BuildContext context) {
      //           changeLanguage(0);
      //         },
      //       ),
      //       SettingsTile(
      //         title: const Text("Bengali"),
      //         leading: trailingWidget(1),
      //         onPressed: (BuildContext context) {
      //           changeLanguage(1);
      //         },
      //       ),
      //     ]),
      //   ],
      // ),
    );
  }

  Widget trailingWidget(int index) {
    return (languageIndex == index)
        ? const Icon(Icons.check, color: Colors.blue)
        : const Icon(null);
  }

  void changeLanguage(int index) {
    setState(() {
      languageIndex = index;
    });
  }
}

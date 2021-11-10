import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:redid/src/styles/constants.dart';

class HelpSupport extends StatefulWidget {
  const HelpSupport({Key? key}) : super(key: key);
  static String tag = 'HelpSupport';

  @override
  HelpSupportState createState() => HelpSupportState();
}

class HelpSupportState extends State<HelpSupport>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: kBackgroundColor,
        centerTitle: true,
        toolbarHeight: 50,
        leadingWidth: 28,
        iconTheme: const IconThemeData(color: kBaseColor),
        title: const Text(
          'Help & Support',
          style: TextStyle(
            fontFamily: 'Chiller',
            fontSize: 25,
            color: kBaseColor,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Stack(fit: StackFit.loose, children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.only(top: 20),
                                child: const CircleAvatar(
                                  backgroundColor: kBaseColor,
                                  radius: 60,
                                  child: Icon(
                                    Icons.live_help_outlined,
                                    color: kBackgroundColor,
                                    size: 60,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ]),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

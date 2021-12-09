import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
    final helpTemplate = Container(
      height: MediaQuery.of(context).size.height * 0.35,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/icons/help.svg"),
          fit: BoxFit.fitHeight,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(80),
          bottomRight: Radius.circular(80),
        ),
        color: kBaseLightColor,
      ),
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(top: 15, bottom: 4),
            child: const Text(
              'Need help?',
              style: TextStyle(
                fontFamily: 'Helvetica-Bold',
                fontSize: 14,
                fontWeight: FontWeight.w900,
                letterSpacing: 0.5,
                color: kBaseColor,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 1.0),
            child: const Text(
              '24/7',
              style: TextStyle(
                fontFamily: 'Roboto-Bold',
                fontSize: 16,
                fontWeight: FontWeight.w900,
                letterSpacing: 0.5,
                color: kBaseColor,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 5),
            child: const Text(
              'Help Centre',
              style: TextStyle(
                fontFamily: 'Helvetica-Bold',
                fontSize: 22,
                fontWeight: FontWeight.w900,
                letterSpacing: 0.5,
                color: kBaseColor,
              ),
            ),
          ),
        ],
      ),
    );
    final helpTag = Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 40, top: 15, right: 40),
            child: const Text(
              'Tell us how we can help 👋',
              style: TextStyle(
                fontFamily: 'Helvetica',
                fontSize: 18,
                fontWeight: FontWeight.w900,
                letterSpacing: 0.5,
                color: kBaseColor,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 40, top: 2, right: 40),
            alignment: Alignment.center,
            child: Column(
              children: const [
                Text(
                  'Our crew of superheroes are standing by',
                  style: TextStyle(
                    fontFamily: 'Helvetica',
                    fontSize: 14,
                    color: kTextLightColor,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 0.5,
                  ),
                ),
                Text(
                  'for service & support!',
                  style: TextStyle(
                    fontFamily: 'Helvetica',
                    fontSize: 14,
                    color: kTextLightColor,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 0.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
    final helpItems = Container(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: MaterialButton(
              onPressed: () {},
              color: kBaseLightColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              minWidth: double.infinity,
              child: Container(
                padding: const EdgeInsets.only(
                    left: 2, right: 12, top: 12, bottom: 12),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 4, left: 1, right: 1),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.pink.shade300,
                      ),
                      child: Image.asset(
                        'assets/icons/helpchat.svg',
                        scale: 3,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              'Chat',
                              style: TextStyle(
                                fontFamily: 'Helvetica',
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          const Text(
                            'Start a conversation now!',
                            style: TextStyle(
                              fontFamily: 'Helvetica',
                              fontSize: 14,
                              fontWeight: FontWeight.w900,
                              color: kBodyTextColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: MaterialButton(
              onPressed: () {},
              color: kBaseLightColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              minWidth: double.infinity,
              child: Container(
                padding: const EdgeInsets.only(
                    left: 2, right: 12, top: 12, bottom: 12),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 8, left: 2, right: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.pink.shade300,
                      ),
                      child: Image.asset(
                        'assets/icons/helpfaq.svg',
                        scale: 3.5,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              'FAQs',
                              style: TextStyle(
                                fontFamily: 'Helvetica',
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          const Text(
                            'Find intelligent answers instantly',
                            style: TextStyle(
                              fontFamily: 'Helvetica',
                              fontSize: 14,
                              fontWeight: FontWeight.w900,
                              color: kBodyTextColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: MaterialButton(
              onPressed: () {},
              color: kBaseLightColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              minWidth: double.infinity,
              child: Container(
                padding: const EdgeInsets.only(
                    left: 2, right: 12, top: 12, bottom: 12),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.pink.shade300,
                      ),
                      child: Image.asset(
                        'assets/icons/helpemail.svg',
                        scale: 3.5,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              'Email',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 17,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          const Text(
                            'Get solutions beamed to your inbox',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              fontWeight: FontWeight.w900,
                              color: kBodyTextColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kBackgroundColor,
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
          'Help & Support',
          style: TextStyle(
            fontFamily: 'Chiller',
            fontSize: 25,
            color: kBaseColor,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      backgroundColor: kBackgroundColor,
      body: Center(
        child: ListView(
          children: <Widget>[
            helpTemplate,
            helpTag,
            helpItems,
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:redid/src/styles/constants.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);
  static String tag = 'About';

  @override
  AboutState createState() => AboutState();
}

class AboutState extends State<About> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final aboutTitle = Container(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.015,
            height: MediaQuery.of(context).size.width * 0.1,
            color: kBaseColor,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.91,
            height: MediaQuery.of(context).size.width * 0.1,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              color: kBaseLightColor,
            ),
            child: const Text(
              'What is redID?',
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Book-Antiqua',
                color: kTextColor,
                fontWeight: FontWeight.w900,
                letterSpacing: 0.8,
              ),
            ),
          ),
        ],
      ),
    );
    final aboutInfo = Container(
      padding:
          const EdgeInsets.only(left: 30.0, top: 40, right: 30.0, bottom: 10),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.1,
                height: MediaQuery.of(context).size.width * 0.1,
                padding: const EdgeInsets.only(top: 8.0),
                alignment: Alignment.topCenter,
                child: const Icon(
                  Icons.circle,
                  color: kBaseColor,
                  size: 12.0,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.60,
                height: MediaQuery.of(context).size.width * 0.10,
                alignment: Alignment.center,
                child: const Text(
                  'redID is a third-party digital advertising platform.',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontFamily: 'Book-Antiqua',
                    color: kTextColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.1,
                height: MediaQuery.of(context).size.width * 0.1,
                //padding: const EdgeInsets.only(top: 5.0),
                alignment: Alignment.topCenter,
                child: const Icon(
                  Icons.circle,
                  color: kBaseColor,
                  size: 12.0,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.60,
                height: MediaQuery.of(context).size.width * 0.150,
                alignment: Alignment.center,
                child: const Text(
                  'It\'s helps both parties to establish a relationship with one advertising agency and another brand promoter.',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontFamily: 'Book-Antiqua',
                    color: kTextColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.1,
                height: MediaQuery.of(context).size.width * 0.1,
                padding: const EdgeInsets.only(top: 8.0),
                alignment: Alignment.topCenter,
                child: const Icon(
                  Icons.circle,
                  color: kBaseColor,
                  size: 12.0,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.60,
                height: MediaQuery.of(context).size.width * 0.10,
                alignment: Alignment.center,
                child: const Text(
                  'You can earn more money every day from redID.',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontFamily: 'Book-Antiqua',
                    color: kTextColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.1,
                height: MediaQuery.of(context).size.width * 0.1,
                padding: const EdgeInsets.only(top: 8.0),
                alignment: Alignment.topCenter,
                child: const Icon(
                  Icons.circle,
                  color: kBaseColor,
                  size: 12.0,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.60,
                height: MediaQuery.of(context).size.width * 0.10,
                alignment: Alignment.center,
                child: const Text(
                  'Do small investments and grow rich within a short time.',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontFamily: 'Book-Antiqua',
                    color: kTextColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.1,
                height: MediaQuery.of(context).size.width * 0.1,
                padding: const EdgeInsets.only(top: 8.0),
                alignment: Alignment.topCenter,
                child: const Icon(
                  Icons.circle,
                  color: kBaseColor,
                  size: 12.0,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.60,
                height: MediaQuery.of(context).size.width * 0.10,
                alignment: Alignment.center,
                child: const Text(
                  'Provide help and get 30% extra money every single month.',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontFamily: 'Book-Antiqua',
                    color: kTextColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.1,
                height: MediaQuery.of(context).size.width * 0.1,
                padding: const EdgeInsets.only(top: 8.0),
                alignment: Alignment.topCenter,
                child: const Icon(
                  Icons.circle,
                  color: kBaseColor,
                  size: 12.0,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.60,
                height: MediaQuery.of(context).size.width * 0.10,
                alignment: Alignment.center,
                child: const Text(
                  'This redID is used to be very easy to access and simple.',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontFamily: 'Book-Antiqua',
                    color: kTextColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
    final regardInfo = Container(
      padding: const EdgeInsets.only(left: 45.0, top: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Regards!',
            style: TextStyle(
              fontFamily: 'Book-Antiqua',
              fontSize: 16.0,
              fontWeight: FontWeight.w900,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 8.0, left: 2.0),
            child: const Text(
              'redID',
              style: TextStyle(
                fontFamily: 'Chiller',
                fontSize: 24.0,
                color: kBaseColor,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ],
      ),
    );
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: kBackgroundColor,
        centerTitle: true,
        toolbarHeight: 50,
        leadingWidth: 28,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: kBaseColor),
        title: const Text(
          'About redID',
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
          padding: const EdgeInsets.all(15.0),
          children: <Widget>[
            aboutTitle,
            aboutInfo,
            regardInfo,
          ],
        ),
      ),
    );
  }
}

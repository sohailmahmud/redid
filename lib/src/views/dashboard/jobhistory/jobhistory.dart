import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:redid/src/styles/colors.dart';

class JobHistory extends StatefulWidget {
  const JobHistory({Key? key}) : super(key: key);
  static String tag = 'JobHistory';

  @override
  JobHistoryState createState() => JobHistoryState();
}

class JobHistoryState extends State<JobHistory>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final jobHistoryItems = Column(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.08,
          padding:
              const EdgeInsets.only(left: 10, top: 4, right: 10, bottom: 4),
          child: MaterialButton(
            elevation: 5.0,
            colorBrightness: Brightness.light,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            onPressed: () {
              //Navigator.of(context).pushNamed('');
            },
            padding:
                const EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
            color: kBaseColor,
            child: const Text(
              'Work History',
              style: TextStyle(
                fontFamily: "Chiller",
                letterSpacing: 0.5,
                fontSize: 22,
                color: kBackgroundColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.08,
          padding:
              const EdgeInsets.only(left: 10, top: 4, right: 10, bottom: 4),
          child: MaterialButton(
            elevation: 5.0,
            colorBrightness: Brightness.light,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            onPressed: () {
              //Navigator.of(context).pushNamed('');
            },
            padding:
                const EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
            color: kBaseColor,
            child: const Text(
              'Today\'s Work Progress',
              style: TextStyle(
                fontFamily: "Chiller",
                letterSpacing: 0.5,
                fontSize: 22,
                color: kBackgroundColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.08,
          padding:
              const EdgeInsets.only(left: 10, top: 4, right: 10, bottom: 4),
          child: MaterialButton(
            elevation: 5.0,
            colorBrightness: Brightness.light,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            onPressed: () {
              //Navigator.of(context).pushNamed('');
            },
            padding:
                const EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
            color: kBaseColor,
            child: const Text(
              'Done Yesterday',
              style: TextStyle(
                fontFamily: "Chiller",
                letterSpacing: 0.5,
                fontSize: 22,
                color: kBackgroundColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.08,
          padding:
              const EdgeInsets.only(left: 10, top: 4, right: 10, bottom: 4),
          child: MaterialButton(
            elevation: 5.0,
            colorBrightness: Brightness.light,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            onPressed: () {
              //Navigator.of(context).pushNamed('');
            },
            padding:
                const EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
            color: kBaseColor,
            child: const Text(
              'Lifetime Performed',
              style: TextStyle(
                fontFamily: "Chiller",
                letterSpacing: 0.5,
                fontSize: 22,
                color: kBackgroundColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: kBackgroundColor,
        centerTitle: true,
        toolbarHeight: 50,
        leadingWidth: 28,
        iconTheme: const IconThemeData(color: kBaseColor),
        title: const Text(
          'Job History',
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
          padding: const EdgeInsets.only(top: 20),
          children: <Widget>[
            jobHistoryItems,
            const Divider(
              thickness: 0.5,
              indent: 0,
              endIndent: 0,
              color: kTextColor,
            ),
          ],
        ),
      ),
    );
  }
}

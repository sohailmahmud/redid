import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:redid/src/styles/colors.dart';

class JobHistory extends StatefulWidget {
  const JobHistory({Key? key}) : super(key: key);
  static String tag = 'JobHistory';

  @override
  JobHistoryState createState() => JobHistoryState();
}

class JobHistoryState extends State<JobHistory>
    with SingleTickerProviderStateMixin {
  bool showWorkHistory = true;
  bool showTodaysWork = false;
  bool showYesterdayWork = false;
  bool showLifetimeWork = false;
  int? isSelected;
  @override
  void dispose() {
    super.dispose();
  }

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
              isSelected = 1;
              setState(() {
                showWorkHistory = !showWorkHistory;
                showTodaysWork = false;
                showYesterdayWork = false;
                showLifetimeWork = false;
              });
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
              isSelected = 2;
              setState(() {
                showTodaysWork = !showTodaysWork;
                showWorkHistory = false;
                showYesterdayWork = false;
                showLifetimeWork = false;
              });
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
              isSelected = 3;
              setState(() {
                showYesterdayWork = !showYesterdayWork;
                showWorkHistory = false;
                showTodaysWork = false;
                showLifetimeWork = false;
              });
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
              isSelected = 4;
              setState(() {
                showLifetimeWork = !showLifetimeWork;
                showWorkHistory = false;
                showTodaysWork = false;
                showYesterdayWork = false;
              });
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
    final workHistoryWidget = Container(
      height: MediaQuery.of(context).size.height * 0.55,
      padding: const EdgeInsets.all(10),
      child: Card(
        color: kBaseColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const <Widget>[
            CircleAvatar(
              radius: 25,
              child: FaIcon(
                FontAwesomeIcons.frown,
                color: kBackgroundColor,
                size: 80,
              ),
            ),
            Text(
              "Work history not available",
              style: TextStyle(
                fontSize: 18,
                fontFamily: "Book-Antiqua",
                color: kBackgroundColor,
              ),
            ),
          ],
        ),
      ),
    );
    final todaysWorkWidget = Container(
      height: MediaQuery.of(context).size.height * 0.55,
      padding: const EdgeInsets.all(10),
      child: Card(
        color: kBaseColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const <Widget>[
            CircleAvatar(
              radius: 25,
              child: FaIcon(
                FontAwesomeIcons.frown,
                color: kBackgroundColor,
                size: 80,
              ),
            ),
            Text(
              "Tody's work progress not available",
              style: TextStyle(
                fontSize: 18,
                fontFamily: "Book-Antiqua",
                color: kBackgroundColor,
              ),
            ),
          ],
        ),
      ),
    );
    final yesterdayWorkWidget = Container(
      height: MediaQuery.of(context).size.height * 0.55,
      padding: const EdgeInsets.all(10),
      child: Card(
        color: kBaseColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const <Widget>[
            CircleAvatar(
              radius: 25,
              child: FaIcon(
                FontAwesomeIcons.frown,
                color: kBackgroundColor,
                size: 80,
              ),
            ),
            Text(
              "Yesterday's done history not available",
              style: TextStyle(
                fontSize: 18,
                fontFamily: "Book-Antiqua",
                color: kBackgroundColor,
              ),
            ),
          ],
        ),
      ),
    );
    final lifetimeWorkWidget = Container(
      height: MediaQuery.of(context).size.height * 0.55,
      padding: const EdgeInsets.all(10),
      child: Card(
        color: kBaseColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const <Widget>[
            CircleAvatar(
              radius: 25,
              child: FaIcon(
                FontAwesomeIcons.frown,
                color: kBackgroundColor,
                size: 80,
              ),
            ),
            Text(
              "Lifetime permonance not available",
              style: TextStyle(
                fontSize: 18,
                fontFamily: "Book-Antiqua",
                color: kBackgroundColor,
              ),
            ),
          ],
        ),
      ),
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
            // SizedBox(
            //   child:
            //       selected != 0 && showWorkHistory ? workHistoryWidget : null,
            // ),
            // SizedBox(
            //   child: selected != 0 && showTodaysWork ? todaysWorkWidget : null,
            // ),
            if (showWorkHistory) workHistoryWidget,
            if (showTodaysWork) todaysWorkWidget,
            if (showYesterdayWork) yesterdayWorkWidget,
            if (showLifetimeWork) lifetimeWorkWidget,
          ],
        ),
      ),
    );
  }
}

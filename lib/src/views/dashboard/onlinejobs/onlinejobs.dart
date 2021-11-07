import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:redid/src/styles/constants.dart';

class OnlineJobs extends StatefulWidget {
  const OnlineJobs({Key? key}) : super(key: key);
  static String tag = 'OnlineJobs';

  @override
  OnlineJobsState createState() => OnlineJobsState();
}

class OnlineJobsState extends State<OnlineJobs>
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
          'Online Jobs',
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
                  height: 140.0,
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
                                  width: 130.0,
                                  height: 130.0,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: ExactAssetImage(
                                          'assets/icons/wallet.svg'),
                                      fit: BoxFit.cover,
                                    ),
                                  )),
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

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
  TabController? _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final packageItems = Container(
      padding: const EdgeInsets.only(top: 20),
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
                    left: 1, right: 12, top: 6, bottom: 3),
                child: Row(
                  children: [
                    Container(
                        padding:
                            const EdgeInsets.only(top: 2, left: 1, right: 1),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: kBaseColor,
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          child: Image.asset(
                            'assets/icons/silver.svg',
                            scale: 4,
                          ),
                        )),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 2, bottom: 2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.pink.shade300,
                            ),
                            child: const Text(
                              'Silver 12,000/=',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 17,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 4),
                            child: Container(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                                top: 2,
                                bottom: 2,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: accentPinkColor,
                              ),
                              child: Row(
                                children: <Widget>[
                                  const Text(
                                    '100 Ads',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w900,
                                      color: kTextColor,
                                    ),
                                  ),
                                  Container(
                                    height: 24,
                                    padding: EdgeInsets.zero,
                                    child: const VerticalDivider(
                                      color: kBackgroundColor,
                                      thickness: 1,
                                    ),
                                  ),
                                  const Text(
                                    '15,000 redID points',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w900,
                                      color: kTextColor,
                                    ),
                                  ),
                                ],
                              ),
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
                    left: 1, right: 12, top: 6, bottom: 3),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 2, left: 1, right: 1),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: kBaseColor,
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          'assets/icons/gold.svg',
                          scale: 5,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 2, bottom: 2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.pink.shade300,
                            ),
                            child: const Text(
                              'Gold 24,000/=',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 17,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 4),
                            child: Container(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                                top: 2,
                                bottom: 2,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: accentPinkColor,
                              ),
                              child: Row(
                                children: <Widget>[
                                  const Text(
                                    '200 Ads',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w900,
                                      color: kTextColor,
                                    ),
                                  ),
                                  Container(
                                    height: 24,
                                    padding: EdgeInsets.zero,
                                    child: const VerticalDivider(
                                      color: kBackgroundColor,
                                      thickness: 1,
                                    ),
                                  ),
                                  const Text(
                                    '30,000 redID points',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w900,
                                      color: kTextColor,
                                    ),
                                  ),
                                ],
                              ),
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
                    left: 1, right: 12, top: 6, bottom: 3),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 2, left: 1, right: 1),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: kBaseColor,
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          'assets/icons/platinum.svg',
                          scale: 4,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 2, bottom: 2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.pink.shade300,
                            ),
                            child: const Text(
                              'Platinum 36,000/=',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 17,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 4),
                            child: Container(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                                top: 2,
                                bottom: 2,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: accentPinkColor,
                              ),
                              child: Row(
                                children: <Widget>[
                                  const Text(
                                    '300 Ads',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w900,
                                      color: kTextColor,
                                    ),
                                  ),
                                  Container(
                                    height: 24,
                                    padding: EdgeInsets.zero,
                                    child: const VerticalDivider(
                                      color: kBackgroundColor,
                                      thickness: 1,
                                    ),
                                  ),
                                  const Text(
                                    '45,000 redID points',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w900,
                                      color: kTextColor,
                                    ),
                                  ),
                                ],
                              ),
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
                    left: 1, right: 12, top: 6, bottom: 3),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 2, left: 1, right: 1),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: kBaseColor,
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(
                          'assets/icons/bronze.svg',
                          scale: 5.2,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 2, bottom: 2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.pink.shade300,
                            ),
                            child: const Text(
                              'Bronze 48,000/=',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 17,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 4),
                            child: Container(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                                top: 2,
                                bottom: 2,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: accentPinkColor,
                              ),
                              child: Row(
                                children: <Widget>[
                                  const Text(
                                    '400 Ads',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w900,
                                      color: kTextColor,
                                    ),
                                  ),
                                  Container(
                                    height: 24,
                                    padding: EdgeInsets.zero,
                                    child: const VerticalDivider(
                                      color: kBackgroundColor,
                                      thickness: 1,
                                    ),
                                  ),
                                  const Text(
                                    '60,000 redID points',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w900,
                                      color: kTextColor,
                                    ),
                                  ),
                                ],
                              ),
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
                    left: 1, right: 12, top: 6, bottom: 3),
                child: Row(
                  children: [
                    Container(
                        padding:
                            const EdgeInsets.only(top: 1, right: 1, bottom: 4),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: kBaseColor,
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          child: Image.asset(
                            'assets/icons/crown.svg',
                            scale: 6,
                          ),
                        )),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 2, bottom: 2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.pink.shade300,
                            ),
                            child: const Text(
                              'Crown 60,000/=',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 17,
                                color: kTextColor,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 4),
                            child: Container(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                                top: 2,
                                bottom: 2,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: accentPinkColor,
                              ),
                              child: Row(
                                children: <Widget>[
                                  const Text(
                                    '500 Ads',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w900,
                                      color: kTextColor,
                                    ),
                                  ),
                                  Container(
                                    height: 24,
                                    padding: EdgeInsets.zero,
                                    child: const VerticalDivider(
                                      color: kBackgroundColor,
                                      thickness: 1,
                                    ),
                                  ),
                                  const Text(
                                    '75,000 redID points',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w900,
                                      color: kTextColor,
                                    ),
                                  ),
                                ],
                              ),
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
    return Material(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
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
          body: Center(
            child: Column(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Container(
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: kBaseColor,
                        width: 0.5,
                      ),
                      color: kBaseLightColor,
                    ),
                    child: TabBar(
                      controller: _controller,
                      unselectedLabelColor: kBaseColor,
                      labelColor: kBackgroundColor,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BoxDecoration(
                        gradient: const LinearGradient(
                            colors: [kBaseColor, kBaseColor]),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: kBaseColor,
                          width: 1,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: kBaseLightColor,
                            blurRadius: 2,
                            offset: Offset(0, 2),
                          )
                        ],
                      ),
                      tabs: [
                        Tab(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Packages",
                                style: TextStyle(
                                  fontFamily: 'Roboto-Bold',
                                  fontSize: 15,
                                  letterSpacing: 0.5,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Workplace",
                                style: TextStyle(
                                  fontFamily: 'Roboto-Bold',
                                  fontSize: 15,
                                  letterSpacing: 0.5,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: TabBarView(
                    controller: _controller,
                    children: [
                      Container(
                        padding: EdgeInsets.zero,
                        child: ListView(
                          children: <Widget>[
                            packageItems,
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.zero,
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.zero,
                              child: const Text('Workplace'),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

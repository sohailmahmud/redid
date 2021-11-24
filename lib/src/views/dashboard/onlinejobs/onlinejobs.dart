import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:redid/src/styles/constants.dart';
import 'package:redid/src/views/dashboard/onlinejobs/cuopon.dart';

class OnlineJobs extends StatefulWidget {
  const OnlineJobs({Key? key}) : super(key: key);
  static String tag = 'OnlineJobs';

  @override
  OnlineJobsState createState() => OnlineJobsState();
}

class OnlineJobsState extends State<OnlineJobs> with TickerProviderStateMixin {
  TabController? _newController;
  TabController? _existingController;
  bool isExistingUser = false;

  @override
  void initState() {
    super.initState();
    _newController = TabController(length: 2, vsync: this);
    _existingController = TabController(length: 1, vsync: this);
  }

  @override
  void dispose() {
    _newController!.dispose();
    _existingController!.dispose();
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
              onPressed: () {
                Navigator.of(context).pushNamed(Coupon.tag);
              },
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
              onPressed: () {
                Navigator.of(context).pushNamed(Coupon.tag);
              },
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
              onPressed: () {
                Navigator.of(context).pushNamed(Coupon.tag);
              },
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
              onPressed: () {
                Navigator.of(context).pushNamed(Coupon.tag);
              },
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
              onPressed: () {
                Navigator.of(context).pushNamed(Coupon.tag);
              },
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
    final workPlaceHeader = Container(
      height: MediaQuery.of(context).size.height * 0.22,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
        color: Color(0xFF880E4F),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(top: 2, bottom: 2),
            alignment: Alignment.topCenter,
            child: CircleAvatar(
              backgroundColor: Colors.pink.withOpacity(0.5),
              radius: 44,
              child: Image.asset(
                'assets/icons/workplace.svg',
                fit: BoxFit.cover,
                scale: 4,
              ),
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            bottom: -20,
            child: Container(
              alignment: Alignment.center,
              child: MaterialButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.only(left: 25, right: 25),
                color: kBaseLightColor,
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(top: 10, bottom: 1),
                      child: const Text(
                        'Cash Balance',
                        style: TextStyle(
                          fontFamily: 'Roboto-Bold',
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 1, bottom: 10),
                      child: const Text(
                        '6,354 BDT',
                        style: TextStyle(
                          fontFamily: 'Roboto-Bold',
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
    final workPlaceSegment = Container(
      padding: const EdgeInsets.only(top: 35, left: 15, bottom: 5, right: 15),
      child: Column(
        children: [
          Container(
            padding:
                const EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
            child: MaterialButton(
              onPressed: () {},
              color: kBaseLightColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: CircleAvatar(
                      backgroundColor: kBaseColor,
                      radius: 35,
                      child: CircleAvatar(
                        backgroundColor: kBaseColor,
                        radius: 32,
                        child: Image.asset(
                          'assets/icons/watch.svg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    padding: EdgeInsets.zero,
                    child: const VerticalDivider(
                      color: kBackgroundColor,
                      thickness: 1,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top: 10, bottom: 3),
                          child: const Text(
                            'Watch Video',
                            style: TextStyle(
                              fontFamily: 'Helvetica-Bold',
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 3, bottom: 10),
                          child: const Text(
                            'Watch video and earn',
                            style: TextStyle(
                              fontFamily: 'Roboto-Bold',
                              letterSpacing: 0.2,
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Colors.pink.shade500,
                          child: Container(
                            padding: const EdgeInsets.only(
                              top: 8,
                              left: 10,
                              bottom: 8,
                              right: 10,
                            ),
                            child: const Text(
                              'Watch Video',
                              style: TextStyle(
                                fontFamily: 'Helvetica-Bold',
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: kCardTitleColor,
                              ),
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
          Container(
            padding:
                const EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
            child: MaterialButton(
              onPressed: () {},
              color: kBaseLightColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: CircleAvatar(
                      backgroundColor: kBaseColor,
                      radius: 35,
                      child: CircleAvatar(
                        backgroundColor: kBaseColor,
                        radius: 31,
                        child: Image.asset(
                          'assets/icons/affiliate.svg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    padding: EdgeInsets.zero,
                    child: const VerticalDivider(
                      color: kBackgroundColor,
                      thickness: 1,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top: 10, bottom: 3),
                          child: const Text(
                            'Affiliate Marketing',
                            style: TextStyle(
                              fontFamily: 'Helvetica-Bold',
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 3, bottom: 10),
                          child: const Text(
                            'Link share and earn',
                            style: TextStyle(
                              fontFamily: 'Roboto-Bold',
                              letterSpacing: 0.2,
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Colors.pink.shade500,
                          child: Container(
                            padding: const EdgeInsets.only(
                              top: 8,
                              left: 30,
                              bottom: 8,
                              right: 30,
                            ),
                            child: const Text(
                              'Affiliate',
                              style: TextStyle(
                                fontFamily: 'Helvetica-Bold',
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: kCardTitleColor,
                              ),
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
        ],
      ),
    );
    final referSection = Container(
      padding: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.only(
                top: 15, left: 120, bottom: 15, right: 120),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.pink.shade50,
            ),
            child: const Text(
              'Refer Code',
              style: TextStyle(
                fontFamily: 'Helvetica-Bold',
                fontSize: 15,
                fontWeight: FontWeight.w800,
                color: accentPurpleColor,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10),
            child: DottedBorder(
              borderType: BorderType.RRect,
              dashPattern: const [6, 2],
              strokeWidth: 1,
              radius: const Radius.circular(12),
              padding: const EdgeInsets.all(4),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 20,
                    bottom: 20,
                    left: 40,
                    right: 40,
                  ),
                  color: Colors.pink.shade900,
                  child: const Text(
                    'REDIDC5987',
                    style: TextStyle(
                      fontFamily: 'Roboto-Bold',
                      fontSize: 16,
                      color: kTextLightColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
    final copyShareButton = Container(
      padding: EdgeInsets.zero,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: kBackgroundColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(
                    color: kTextColor,
                  ),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 24),
                    child: const Icon(
                      Icons.content_copy_outlined,
                      color: kTextColor,
                      size: 20,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 10, right: 24, top: 10, bottom: 10),
                    child: const Text(
                      'Copy',
                      style: TextStyle(
                        fontFamily: 'Roboto-Bold',
                        fontSize: 14,
                        color: kTextColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: kBackgroundColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(
                    color: kTextColor,
                  ),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 24),
                    child: const Icon(
                      Icons.share_outlined,
                      color: kTextColor,
                      size: 20,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 10, right: 24, top: 10, bottom: 10),
                    child: const Text(
                      'Share',
                      style: TextStyle(
                        fontFamily: 'Roboto-Bold',
                        fontSize: 14,
                        color: kTextColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
    final withdrawSummaryButton = Container(
      padding: EdgeInsets.zero,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 5),
            child: MaterialButton(
              onPressed: () {},
              color: Colors.teal.shade700,
              colorBrightness: Brightness.light,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                padding: const EdgeInsets.only(
                    left: 26, right: 26, top: 10, bottom: 10),
                child: const Text(
                  'Withdraw',
                  style: TextStyle(
                    fontFamily: 'Roboto-Bold',
                    fontSize: 14,
                    color: kBackgroundColor,
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 5),
            child: MaterialButton(
              onPressed: () {},
              color: Colors.deepOrange.shade800,
              colorBrightness: Brightness.light,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                padding: const EdgeInsets.only(
                    left: 26, right: 26, top: 10, bottom: 10),
                child: const Text(
                  'Summary',
                  style: TextStyle(
                    fontFamily: 'Roboto-Bold',
                    fontSize: 14,
                    color: kBackgroundColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
    return Material(
      child: isExistingUser
          ? DefaultTabController(
              length: 1,
              child: Scaffold(
                appBar: AppBar(
                  automaticallyImplyLeading: false,
                  backgroundColor: kBackgroundColor,
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
                    'Online Jobs',
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
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
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
                            controller: _existingController,
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
                                      "Work Place",
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
                          controller: _existingController,
                          children: [
                            Container(
                              padding: EdgeInsets.zero,
                              child: ListView(
                                children: <Widget>[
                                  workPlaceHeader,
                                  workPlaceSegment,
                                  referSection,
                                  copyShareButton,
                                  withdrawSummaryButton,
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
            )
          : DefaultTabController(
              length: 2,
              child: Scaffold(
                appBar: AppBar(
                  automaticallyImplyLeading: false,
                  backgroundColor: kBackgroundColor,
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
                    'Online Jobs',
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
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
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
                            controller: _newController,
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
                                      "Work Place",
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
                          controller: _newController,
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
                              child: ListView(
                                children: <Widget>[
                                  workPlaceHeader,
                                  workPlaceSegment,
                                  referSection,
                                  copyShareButton,
                                  withdrawSummaryButton,
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

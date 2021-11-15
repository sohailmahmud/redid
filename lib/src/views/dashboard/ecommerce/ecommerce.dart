import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:redid/src/styles/constants.dart';

class ECommerce extends StatefulWidget {
  const ECommerce({Key? key}) : super(key: key);
  static String tag = 'ECommerce';

  @override
  ECommerceState createState() => ECommerceState();
}

class ECommerceState extends State<ECommerce>
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
        elevation: 0.0,
        iconTheme: const IconThemeData(color: kBaseColor),
        title: const Text(
          'eCommerce',
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
            const SizedBox(height: 50),
            Column(
              children: <Widget>[
                Container(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Stack(
                          fit: StackFit.loose,
                          children: <Widget>[
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
                                      Icons.shopping_cart_outlined,
                                      color: kBackgroundColor,
                                      size: 60,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Coming Soon...',
                    style: TextStyle(
                      fontFamily: 'Chiller',
                      fontSize: 35,
                      fontWeight: FontWeight.w900,
                      color: kBaseColor,
                    ),
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

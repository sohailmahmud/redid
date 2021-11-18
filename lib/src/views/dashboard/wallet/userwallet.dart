import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:redid/src/styles/constants.dart';
import 'package:redid/src/styles/light_color.dart';

class UserWallet extends StatefulWidget {
  const UserWallet({Key? key}) : super(key: key);
  static String tag = 'UserWallet';

  @override
  UserWalletState createState() => UserWalletState();
}

class UserWalletState extends State<UserWallet> {
  Widget _operationsWidget() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _icon(Icons.transfer_within_a_station, "Transfer"),
            _icon(Icons.phone, "Airtime"),
            _icon(Icons.payment, "Pay Bills"),
            _icon(Icons.code, "QR Pay"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _icon(Icons.style, "Tickets"),
            _icon(Icons.family_restroom, "Insurance"),
            _icon(Icons.shopping_cart, "Shopping"),
            _icon(Icons.restaurant, "Food"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _icon(Icons.travel_explore, "Travel"),
            _icon(Icons.home_work, "Savings"),
            _icon(Icons.sports_esports, "Games"),
            _icon(Icons.volunteer_activism, "Donation"),
          ],
        ),
      ],
    );
  }

  Widget _icon(IconData icon, String text) {
    return Column(
      children: <Widget>[
        InkWell(
          onTap: () {
            //Navigator.pushNamed(context, '/transfer');
          },
          splashColor: kBackgroundColor,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: 75,
            width: 80,
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 6),
            decoration: const BoxDecoration(
              color: Color(0xFFF8BBD0),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Color(0xfff3f3f3),
                    offset: Offset(5, 5),
                    blurRadius: 10)
              ],
            ),
            child: Icon(icon, color: kBaseColor),
          ),
        ),
        Text(
          text,
          style: GoogleFonts.mulish(
            textStyle: Theme.of(context).textTheme.headline4,
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: const Color(0xff76797e),
          ),
        ),
      ],
    );
  }

  Widget balanceCard() {
    return Container(
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(40)),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .25,
          color: kBaseColor,
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Total Balance,',
                    style: GoogleFonts.mulish(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: kBackgroundColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '6,354',
                        style: GoogleFonts.mulish(
                            textStyle: Theme.of(context).textTheme.headline4,
                            fontSize: 35,
                            fontWeight: FontWeight.w800,
                            color: LightColor.yellow2),
                      ),
                      Text(
                        ' BDT',
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w500,
                            color: LightColor.yellow.withAlpha(200)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 85,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12)),
                        border: Border.all(color: Colors.white, width: 1)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 20,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "TopUp",
                          style: GoogleFonts.mulish(
                            textStyle: Theme.of(context).textTheme.headline4,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: kWhiteShadow,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Positioned(
                left: -170,
                top: -170,
                child: CircleAvatar(
                  radius: 130,
                  backgroundColor: Color(0xFFF36196),
                ),
              ),
              const Positioned(
                left: -160,
                top: -190,
                child: CircleAvatar(
                  radius: 130,
                  backgroundColor: Color(0xFFF28EAB),
                ),
              ),
              const Positioned(
                right: -170,
                bottom: -170,
                child: CircleAvatar(
                  radius: 130,
                  backgroundColor: Color(0xFFF36196),
                ),
              ),
              const Positioned(
                right: -160,
                bottom: -190,
                child: CircleAvatar(
                  radius: 130,
                  backgroundColor: Color(0xFFF28EAB),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

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
          'Wallet',
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
            const SizedBox(
              height: 20,
            ),
            balanceCard(),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.only(left: 20),
              child: const TitleText(
                text: "Operations",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            _operationsWidget(),
          ],
        ),
      ),
    );
  }
}

class BalanceCard {}

class TitleText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  const TitleText(
      {Key? key,
      this.text = '',
      this.fontSize = 18,
      this.color = LightColor.navyBlue2})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.mulish(
            fontSize: fontSize, fontWeight: FontWeight.w800, color: color));
  }
}

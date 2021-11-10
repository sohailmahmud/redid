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
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _icon(Icons.transfer_within_a_station, "Transfer"),
          _icon(Icons.phone, "Airtime"),
          _icon(Icons.payment, "Pay Bills"),
          _icon(Icons.code, "QR Pay"),
          _icon(Icons.transfer_within_a_station, "Transfer"),
          _icon(Icons.phone, "Airtime"),
          _icon(Icons.payment, "Pay Bills"),
          _icon(Icons.code, "QR Pay"),
        ],
      ),
    );
  }

  Widget _icon(IconData icon, String text) {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            //Navigator.pushNamed(context, '/transfer');
          },
          child: Container(
            height: 80,
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
                ]),
            child: Icon(icon, color: kBaseColor),
          ),
        ),
        Text(
          text,
          style: GoogleFonts.mulish(
            textStyle: Theme.of(context).textTheme.headline4,
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: const Color(0xff76797e),
          ),
        ),
      ],
    );
  }

  Widget _transectionList() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _transection("Flight Ticket", "23 Feb 2021"),
          _transection("Lorem Ipsum", "25 Feb 2021"),
          _transection("Mob Ads", "23 Feb 2021"),
          _transection("Affiliate Marketing", "25 Feb 2021"),
          _transection("Online Store", "25 Feb 2021"),
          _transection("Premium Membership", "03 Mar 2021"),
          _transection("Online Starbucks", "25 Feb 2021"),
          _transection("My Phone Bill", "03 Mar 2021"),
        ],
      ),
    );
  }

  Widget _transection(String text, String time) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 2,
      shadowColor: Colors.pink.shade100,
      child: Container(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: ListTile(
          leading: Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              color: Color(0xFFF06292),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: const Icon(Icons.hd, color: Colors.white),
          ),
          contentPadding: const EdgeInsets.symmetric(),
          title: TitleText(
            text: text,
            fontSize: 14,
          ),
          subtitle: Text(time),
          trailing: Container(
              height: 30,
              width: 80,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: LightColor.lightGrey,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Text('-2000 BDT',
                  style: GoogleFonts.mulish(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: LightColor.navyBlue2))),
        ),
      ),
    );
  }

  Widget balanceCard() {
    return Container(
      padding: EdgeInsets.zero,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(40)),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .27,
          color: kBaseColor,
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Total Balance,',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
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
                      children: const <Widget>[
                        Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 20,
                        ),
                        SizedBox(width: 5),
                        Text("Top Up", style: TextStyle(color: Colors.white)),
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
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 25,
              ),
              balanceCard(),
              const SizedBox(
                height: 30,
              ),
              const TitleText(
                text: "Operations",
              ),
              const SizedBox(
                height: 10,
              ),
              _operationsWidget(),
              const SizedBox(
                height: 30,
              ),
              const TitleText(
                text: "Transactions",
              ),
              Expanded(child: _transectionList()),
            ],
          ),
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

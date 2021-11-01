import 'package:flutter/material.dart';
import 'package:redid/src/app/appview.dart';
import 'package:redid/src/configs/routes.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'redID',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //fontFamily: 'Chiller',
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const AppView(),
      routes: routes,
    );
  }
}

class Init {
  Init._();
  static final instance = Init._();
  Future initialize() async {
    await Future.delayed(const Duration(seconds: 3));
  }
}

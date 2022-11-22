import 'package:agro_sos/buy_and_sell.dart';
import 'package:agro_sos/welcome_page.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Agro SOS',
      initialRoute: "welcome",
      routes: {
        "welcome": (context) => WelcomePage(),
        "homePage": (context) => HomePage(),
        "buyPage": ((context) => BuyPage())
      }
    );
  }
}



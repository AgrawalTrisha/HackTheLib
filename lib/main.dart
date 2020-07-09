import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackthelib/pages/daily_page.dart';
import 'package:hackthelib/widgets/journal_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: "Kodchasan",
        primaryTextTheme: TextTheme(
          headline1: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 36,
            color: Colors.white
          ),
          bodyText1: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 18,
            color: Colors.white
          )
        ),
        iconTheme: IconThemeData(
          color: Color(0xFF80B961),
          size: 50
        ),
        cardTheme: CardTheme(
          color: Color(0xFF80B961),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          elevation: 8
        )
      ),
      home: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DailyPage(),
    );
  }
}

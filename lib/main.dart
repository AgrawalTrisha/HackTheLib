import 'package:flutter/material.dart';
import 'package:hackthelib/pages/daily_page.dart';

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
        textTheme: TextTheme(
          bodyText1: TextStyle(
            fontFamily: "Kodchasan",
            fontWeight: FontWeight.w300,
            fontSize: 24,
            color: Colors.white
          )
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
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

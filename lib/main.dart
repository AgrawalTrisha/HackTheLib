import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackthelib/pages/daily_page.dart';
import 'package:hackthelib/pages/food_page.dart';
import 'package:hackthelib/pages/journal_page.dart';
import 'package:hackthelib/pages/mood_page.dart';
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
        backgroundColor: Color(0xFFf2f4f3),
        fontFamily: "Kodchasan",
        primaryTextTheme: TextTheme(
          headline1: TextStyle(fontWeight: FontWeight.w500, fontSize: 36, color: Color(0xFF80B961)),
          headline2: TextStyle(fontWeight: FontWeight.w500, fontSize: 24, color: Colors.white),
          bodyText1: TextStyle(fontWeight: FontWeight.w300, fontSize: 18, color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Color(0xFF80B961), size: 50),
        cardTheme: CardTheme(color: Color(0xFFa6cd92), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)), elevation: 8),
      ),
      home: HomeView(),
    );
  }
}

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int pageNum = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _getPage(pageNum),
      drawer: Container(
        color: Colors.white,
        width: 60,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: Icon(Icons.calendar_today),
                onPressed: () {
                  setState(() {
                    pageNum = 1;
                  });
                  Navigator.pop(context);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: Icon(Icons.local_florist),
                onPressed: () {
                  setState(() {
                    pageNum = 2;
                  });
                  Navigator.pop(context);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: Icon(Icons.book),
                onPressed: () {
                  setState(() {
                    pageNum = 3;
                  });
                  Navigator.pop(context);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: Icon(Icons.mood),
                onPressed: () {
                  setState(() {
                    pageNum = 4;
                  });
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getPage(int pageNum) {
    switch (pageNum) {
      case 1:
        return DailyPage();
      case 2:
        return FoodPage();
      case 3:
        return JournalPage();
      case 4:
        return MoodPage();
    }
  }
}

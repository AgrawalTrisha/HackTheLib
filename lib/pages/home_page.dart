import 'package:flutter/material.dart';
import 'package:hackthelib/widgets/cards/body_card.dart';
import 'package:hackthelib/widgets/cards/journal_card.dart';
import 'package:hackthelib/widgets/cards/meal_card.dart';
import 'package:hackthelib/widgets/cards/mood_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 30, 20, 15),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: new LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFFa6cd92), Color(0xFFaedacf)],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/forward_arrow.png", scale: 1.5),
          Text("July 9th,\n2020", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 50, color: Colors.white)),
          Spacer(flex: 15),
          GestureDetector(
            onTap: () {
              _mealPressed(context);
            },
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: new LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFFffae42), Color(0xFFf2672c)],
                ),
              ),
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.white, width: 8),
                  gradient: new LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFFffae42), Color(0xFFf2672c)],
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.local_florist,
                      size: 30,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text("log a meal", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20, color: Colors.white)),
                  ],
                ),
              ),
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              _journalPressed(context);
            },
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: new LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFFffae42), Color(0xFFf2672c)],
                ),
              ),
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.white, width: 8),
                  gradient: new LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFFffae42), Color(0xFFf2672c)],
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.edit, size: 30, color: Colors.white),
                    SizedBox(
                      width: 20,
                    ),
                    Text("write a journal entry", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20, color: Colors.white)),
                  ],
                ),
              ),
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              _moodPressed(context);
            },
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: new LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFFffae42), Color(0xFFf2672c)],
                ),
              ),
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.white, width: 8),
                  gradient: new LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFFffae42), Color(0xFFf2672c)],
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.sentiment_satisfied, size: 30, color: Colors.white),
                    SizedBox(
                      width: 20,
                    ),
                    Text("log your mood", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20, color: Colors.white)),
                  ],
                ),
              ),
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              _bodyPressed(context);
            },
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: new LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFFffae42), Color(0xFFf2672c)],
                ),
              ),
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.white, width: 8),
                  gradient: new LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFFffae42), Color(0xFFf2672c)],
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.accessibility_new, size: 30, color: Colors.white),
                    SizedBox(
                      width: 20,
                    ),
                    Text("log your body image", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20, color: Colors.white)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _journalPressed(BuildContext context) async {
    switch (await showDialog<String>(
        context: context,
        builder: (BuildContext context) {
          return JournalCard();
        })) {
    }
  }

  Future<void> _moodPressed(BuildContext context) async {
    switch (await showDialog<String>(
        context: context,
        builder: (BuildContext context) {
          return MoodCard();
        })) {
    }
  }

  Future<void> _mealPressed(BuildContext context) async {
    switch (await showDialog<String>(
        context: context,
        builder: (BuildContext context) {
          return MealCard();
        })) {
    }
  }

  Future<void> _bodyPressed(BuildContext context) async {
    switch (await showDialog<String>(
        context: context,
        builder: (BuildContext context) {
          return BodyCard();
        })) {
    }
  }
}

import 'package:flutter/material.dart';
import 'package:hackthelib/widgets/day_card.dart';
import 'package:hackthelib/widgets/journal_card.dart';
import 'package:hackthelib/widgets/mood_card.dart';

class DailyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          DayCard(
            day: 1,
            date: DateTime.utc(2020, 7, 9),
          ),
          JournalCard(),
          MoodCard(),
        ],
      ),
    );
  }
}

class DebugBorder extends StatelessWidget {
  final Widget child;
  const DebugBorder({this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all()
      ),
      child: child,
    );
  }
}

import 'package:flutter/material.dart';

class MoodCardStatic extends StatelessWidget {
  final int day;
  final int mood;
  final String reason;
  const MoodCardStatic({this.day, this.mood, this.reason});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: new LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFFffae42), Color(0xFFf2672c)],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("July $day, 2020", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700)),
          Icon(_getIcon(mood), size: 80, color: Colors.white,),
          Text(reason, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w200, fontSize: 18),)
        ],
      ),
    );
  }
}

IconData _getIcon(num) {
  switch(num) {
    case 1:
      return Icons.sentiment_very_satisfied;
    case 2:
      return Icons.sentiment_satisfied;
    case 3:
      return Icons.sentiment_dissatisfied;
    case 4:
      return Icons.sentiment_very_dissatisfied;
  }
}
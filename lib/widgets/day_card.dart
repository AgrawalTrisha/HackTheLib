import 'package:flutter/material.dart';

class DayCard extends StatelessWidget {
  final int day;
  final DateTime date;

  const DayCard({this.day, this.date});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text("Day $day: ${_getMonth(date.month)} ${date.day}, ${date.year}", style: Theme.of(context).primaryTextTheme.headline1,),
      )
    );
  }
}

String _getMonth(int month) {
  switch(month) {
    case 1:
      return "January";
    case 2:
      return "February";
    case 3:
      return "March";
    case 4:
      return "April";
    case 5:
      return "May";
    case 6:
      return "June";
    case 7:
      return "July";
    case 8:
      return "August";
    case 9:
      return "September";
    case 10:
      return "October";
    case 11:
      return "November";
    case 12:
      return "December";
    default:
      return "null";
  }
}
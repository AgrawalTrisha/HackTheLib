import 'package:flutter/material.dart';
import 'package:hackthelib/widgets/cards/mood_card_static.dart';

class MoodPage extends StatelessWidget {
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
          Text("Your mood log", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 50, color: Colors.white)),
          Spacer(),
          Container(height: 509,child:SingleChildScrollView(
            child: GridView.count(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              crossAxisCount: 2,
              children: <Widget>[
                MoodCardStatic(day: 9, mood: 1, reason: "Worked hard"),
                MoodCardStatic(day: 8, mood: 3, reason: "Slept badly"),
                MoodCardStatic(day: 7, mood: 1, reason: "Got bubble tea"),
                MoodCardStatic(day: 6, mood: 2, reason: "Chilled out"),
                MoodCardStatic(day: 5, mood: 2, reason: "Didn't do much"),
                MoodCardStatic(day: 4, mood: 1, reason: "Worked hard!!"),
                MoodCardStatic(day: 3, mood: 4, reason: "Had a fight"),
                MoodCardStatic(day: 2, mood: 3, reason: "Just a bad day"),
              ],
            ),
          ))
        ],
      ),
    );
  }
}

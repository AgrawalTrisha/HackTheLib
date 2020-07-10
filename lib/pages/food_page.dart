import 'package:flutter/material.dart';
import 'package:hackthelib/widgets/cards/meal_card_static.dart';

class FoodPage extends StatelessWidget {
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
          Text("Your food log", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 50, color: Colors.white)),
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
                MealCardStatic(day: 9, mood: 2, food: "Fruit salad", slider: 5,),
                MealCardStatic(day: 8, mood: 3, food: "Chocolate cake", slider: 2),
                MealCardStatic(day: 7, mood: 1, food: "Tuna sandwich", slider: 4),
                MealCardStatic(day: 7, mood: 2, food: "Wafer cookies", slider: 3),
                MealCardStatic(day: 6, mood: 2, food: "Alfredo pasta", slider: 3),
                MealCardStatic(day: 5, mood: 1, food: "Coffee & cake", slider: 2),
                MealCardStatic(day: 4, mood: 4, food: "Everything...", slider: 1),
                MealCardStatic(day: 4, mood: 3, food: "Lots of sweets", slider: 2),
              ],
            ),
          ))
        ],
      ),
    );
  }
}

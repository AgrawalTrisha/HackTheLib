import 'package:flutter/material.dart';

class BodyPage extends StatelessWidget {
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
          Text("Body image", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 50, color: Colors.white)),
          Spacer(),
          Container(
            height: 509,
            child: ListView(children: [Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.sentiment_satisfied, size: 44,),
                        Text("July 9th, 2020", style: Theme.of(context).primaryTextTheme.headline1),
                      ],
                    ),
                    Text("I looked in the mirror and saw just myself. I felt like I should have felt bad, but I didn't. I forgave myself for that feeling, and it was okay.", style: Theme.of(context).primaryTextTheme.bodyText1),
                    Slider(value: 3, max: 5, min: 1, onChanged: (double) {},)
                  ],
                ),
              ),
            ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.sentiment_very_dissatisfied, size: 44,),
                          Text("July 7th, 2020", style: Theme.of(context).primaryTextTheme.headline1),
                        ],
                      ),
                      Text("I didn't even feel like myself. I stayed in a hoodie and sweatpants all day because I couldn't bear to look at myself. I had to close my eyes when I turned on my laptop because I didn't want to see my face in the black screen.", style: Theme.of(context).primaryTextTheme.bodyText1),
                      Slider(value: 1, max: 5, min: 1, onChanged: (double) {},)
                    ],
                  ),
                ),
              )
            ],),
          ),
        ],
      ),
    );
  }
}

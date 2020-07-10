import 'package:flutter/material.dart';

class JournalPage extends StatelessWidget {
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
          Text("Your journal", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 50, color: Colors.white)),
          Spacer(),
          Container(
            height: 509,
            child: ListView(children: [Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text("July 9th, 2020", style: Theme.of(context).primaryTextTheme.headline1),
                    Text("When we are faced with problems in our lives there are two different things we can do. We can stumble over them and let them hurt us; we can let them impact us negatively. Or we have the ability to learn from these moments. We can use them as building blocks to build a better, stronger us.", style: Theme.of(context).primaryTextTheme.bodyText1)
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text("July 7th, 2020", style: Theme.of(context).primaryTextTheme.headline1),
                    Text("You say the worst things to yourself. You make yourself cry and you mean to make yourself cry. Why? Why are you so mean to yourself?  The world can be so hurtful sometimes, so why must you stoop so low to even yourself? You must take care of yourself even more so during the times the world is busy and can’t seem to care at the moment for you. Later, they will ask for forgiveness. Later, they will be kind and care. Later they will explain. But right now, you must not hurt yourself even more.", style: Theme.of(context).primaryTextTheme.bodyText1)
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

import 'package:flutter/material.dart';

class MealCard extends StatefulWidget {
  @override
  _MealCardState createState() => _MealCardState();
}

class _MealCardState extends State<MealCard> {
  TextEditingController _editingController;
  FocusNode _focusNode;
  IconData icon = Icons.edit;
  double slider = 1;

  @override
  void initState() {
    super.initState();
    _editingController = TextEditingController(text: "I ate...");
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _editingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 130),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("How do I feel?", style: Theme.of(context).primaryTextTheme.bodyText1.copyWith(fontSize: 22, fontWeight: FontWeight.w600)),
              IconButton(onPressed: () {_moodSelector();}, iconSize: 80, icon: Icon(icon)),
              Text("What did I eat?", style: Theme.of(context).primaryTextTheme.bodyText1.copyWith(fontSize: 22, fontWeight: FontWeight.w600)),
              EditableText(
                controller: _editingController,
                focusNode: _focusNode,
                style: Theme.of(context).primaryTextTheme.bodyText1,
                cursorColor: Colors.white,
                backgroundCursorColor: Colors.green,
                minLines: null,
                maxLines: null,
              ),
              Spacer(),
              Text("Was I in control?", style: Theme.of(context).primaryTextTheme.bodyText1.copyWith(fontSize: 22, fontWeight: FontWeight.w600)),
              Slider(
                value: slider,
                onChanged: (double) {
                  setState(() {
                    slider = double;
                  });
                },
                divisions: 4,
                label: _getLabel(slider),
                min: 1,
                max: 5
              ),
              Spacer(flex: 4),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  gradient: new LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFFa6cd92), Color(0xFFaedacf)],
                  ),
                ),
                child: Text("submit", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24, color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Future<void> _moodSelector() async {
    switch (await showDialog<String>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text('How are you feeling?'),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () { Navigator.pop(context, "very happy");},
                child: const Icon(Icons.sentiment_very_satisfied, size: 60),
              ),
              SimpleDialogOption(
                onPressed: () { Navigator.pop(context, "happy");},
                child: const Icon(Icons.sentiment_satisfied, size: 60),
              ),
              SimpleDialogOption(
                onPressed: () { Navigator.pop(context, "sad");},
                child: const Icon(Icons.sentiment_dissatisfied, size: 60),
              ),
              SimpleDialogOption(
                onPressed: () { Navigator.pop(context, "very sad");},
                child: const Icon(Icons.sentiment_very_dissatisfied, size: 60),
              ),
            ],
          );
        }
    )) {
      case "very happy":
        setState(() {
          icon = Icons.sentiment_very_satisfied;
        });
        break;
      case "happy":
        setState(() {
          icon = Icons.sentiment_satisfied;
        });
        break;
      case "sad":
        setState(() {
          icon = Icons.sentiment_dissatisfied;
        });
        break;
      case "very sad":
        setState(() {
          icon = Icons.sentiment_very_dissatisfied;
        });
        break;
    }
  }
}

String _getLabel(value) {
  switch(value) {
    case 1:
      return "No";
    case 2:
      return "Slightly";
    case 3:
      return "Somewhat";
    case 4:
      return "Mostly";
    case 5:
      return "Yes";
  }
}
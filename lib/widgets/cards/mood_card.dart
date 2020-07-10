import 'package:flutter/material.dart';

class MoodCard extends StatefulWidget {
  @override
  _MoodCardState createState() => _MoodCardState();
}

class _MoodCardState extends State<MoodCard> {
  TextEditingController _editingController;
  FocusNode _focusNode;
  IconData icon = Icons.edit;

  @override
  void initState() {
    super.initState();
    _editingController = TextEditingController(text: "I feel this way because...");
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
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 150),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("How do you feel?", style: Theme.of(context).primaryTextTheme.bodyText1.copyWith(fontSize: 22, fontWeight: FontWeight.w600)),
              IconButton(onPressed: () {_moodSelector();}, iconSize: 80, icon: Icon(icon)),
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
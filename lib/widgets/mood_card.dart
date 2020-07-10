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
    _editingController = TextEditingController(text: "Notes about mood");
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _editingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(onPressed: () {_moodSelector();}, iconSize: 50, icon: Icon(icon, color: Colors.white)),
          Expanded(
            child: EditableText(
              controller: _editingController,
              focusNode: _focusNode,
              style: Theme.of(context).primaryTextTheme.bodyText1,
              cursorColor: Colors.white,
              backgroundCursorColor: Colors.green,
              minLines: null,
              maxLines: null,
            ),
          ),
        ],
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
                child: const Icon(Icons.sentiment_very_satisfied),
              ),
              SimpleDialogOption(
                onPressed: () { Navigator.pop(context, "happy");},
                child: const Icon(Icons.sentiment_satisfied),
              ),
              SimpleDialogOption(
                onPressed: () { Navigator.pop(context, "sad");},
                child: const Icon(Icons.sentiment_dissatisfied),
              ),
              SimpleDialogOption(
                onPressed: () { Navigator.pop(context, "very sad");},
                child: const Icon(Icons.sentiment_very_dissatisfied),
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
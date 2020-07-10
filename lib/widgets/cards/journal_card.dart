import 'package:flutter/material.dart';

class JournalCard extends StatefulWidget {
  @override
  _JournalCardState createState() => _JournalCardState();
}

class _JournalCardState extends State<JournalCard> {
  TextEditingController _titleController;
  TextEditingController _bodyController;
  FocusNode _titleFocusNode;
  FocusNode _bodyFocusNode;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: "Title");
    _bodyController = TextEditingController(text: "What's on your mind?");
    _titleFocusNode = FocusNode();
    _bodyFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _bodyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(60),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              EditableText(
                controller: _titleController,
                focusNode: _titleFocusNode,
                style: Theme.of(context).primaryTextTheme.headline2,
                cursorColor: Colors.white,
                backgroundCursorColor: Colors.green,
                minLines: null,
                maxLines: null,
              ),
              EditableText(
                controller: _bodyController,
                focusNode: _bodyFocusNode,
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
}

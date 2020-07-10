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
    _titleController = TextEditingController(text: "Journal title here");
    _bodyController = TextEditingController(text: "Journal entry here");
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
    return Card(
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
          ],
        ),
      ),
    );
  }
}

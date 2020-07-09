import 'package:flutter/material.dart';

class JournalCard extends StatefulWidget {
  @override
  _JournalCardState createState() => _JournalCardState();
}

class _JournalCardState extends State<JournalCard> {
  TextEditingController _editingController;
  FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _editingController = TextEditingController(text: "Journal entry here");
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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
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
    );
  }
}

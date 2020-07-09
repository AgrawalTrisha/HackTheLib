import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class DailyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 180,
          width: 200,
          child: Card(
            child: Center(child: Icon(Icons.local_florist))
          )
        ),
      ),
    );
  }
}

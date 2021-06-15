import 'package:flutter/material.dart';

class CustomFloatingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Theme.of(context).accentColor,
      child: Icon(
        Icons.add,
        size: 34,
        color: Colors.white,
      ),
      onPressed: () => print("button pressed"),
      highlightElevation: 12,
    );
  }
}

import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild, this.onPrez});
  final Function onPrez;
  final Color colour;
  final cardChild;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPrez,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

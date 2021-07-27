import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.title});
  final Function onTap;
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            title,
            style: klargebuttontextstyle,
          ),
        ),
        width: double.infinity,
        color: kbottomColor,
        margin: EdgeInsets.only(top: 10.0),
        height: kbottomContainerHeight,
        padding: EdgeInsets.only(
          bottom: 20.0,
        ),
      ),
    );
  }
}

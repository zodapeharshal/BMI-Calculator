import 'package:flutter/material.dart';
import '../constants.dart';

class TextIcon extends StatelessWidget {
  TextIcon({@required this.ic, @required this.txt});

  final IconData ic;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          ic,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          txt,
          style: ktxtStyle,
        )
      ],
    );
  }
}

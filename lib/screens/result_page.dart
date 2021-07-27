import 'package:bmi_calculator/constants.dart';
import 'input_page.dart';
import 'package:flutter/material.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';
import 'package:bmi_calculator/calculator_brain.dart';

class ResultPage extends StatelessWidget {
  ResultPage({this.sbmi, this.sresult, this.sresultIP});

  final String sbmi;
  final String sresult;
  final String sresultIP;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text("YOUR RESULT", style: kTitleTextStyle),
            ),
          ),
          Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kactivecardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      sresult.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      sbmi,
                      style: kBMITextStyle,
                    ),
                    Text(
                      sresultIP,
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
                  ],
                ),
              )),
          BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              title: 'RE-CALCULATE')
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:bmi_calculator_app/components/reusable_card.dart';
import 'package:bmi_calculator_app/style.dart';
import 'package:bmi_calculator_app/components/bottom_btn.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiNumResult,
      @required this.result,
      @required this.bmiSuggestion});

  final String bmiNumResult;
  final String result;
  final String bmiSuggestion;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.all(15),
            child: Text('Your Result', style: kTitleStyle),
          )),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(result.toUpperCase(), style: kResultStyle),
                  Text(bmiNumResult, style: kBMIStyle),
                  Column(children: <Widget>[
                    Text('Normal BMI range: ', style: kLabelStyle),
                    SizedBox(height: 5),
                    Text('18.5 - 25 kg/m2'),
                  ]),
                  Text(bmiSuggestion,
                      style: kBodyStyle, textAlign: TextAlign.center)
                ],
              ),
            ),
          ),
          BottomButton(
              title: 'RE-CALCULATE YOUR BMI',
              onTap: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}

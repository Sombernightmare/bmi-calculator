import 'package:flutter/material.dart';
import 'package:bmi_calculator_app/style.dart';
import 'package:bmi_calculator_app/components/reusable_card.dart';
import 'package:bmi_calculator_app/components/bottom_btn.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: <Widget>[
          Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(left: 15),
              child: Text('Percentile:', style: kDetailLabel)),
          Expanded(
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(child: Text('5th', style: kPercentileNum)),
                      SizedBox(width: 10),
                      Container(
                        width: 200,
                        child: Text(
                          'Percentile for your age and gender',
                          style: kPercentileStyle,
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(left: 15),
              child: Text('Specific Category:', style: kDetailLabel)),
          Expanded(
              child: ReusableCard(
            color: kActiveCardColor,
            cardChild: Container(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Normal',
                          style: kDetailLabel,
                        ),
                        Text('Healthy Weight')
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Range', style: kDetailText),
                        Text('18.5 - 25 kgm/2', style: kDetailText)
                      ],
                    )
                  ],
                ),
              ),
            ),
          )),
          Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(left: 15),
              child: Text('Tip:', style: kDetailLabel)),
          Expanded(
              child: ReusableCard(
                  color: kActiveCardColor,
                  cardChild: Container(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10),
                        child: Text(
                          'Maintaining a healthy weight may reduce the risk of chronic diseases associated with overweight and obesity.',
                          style: kDetailText,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ))),
          BottomButton(
              title: 'Results',
              onTap: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}

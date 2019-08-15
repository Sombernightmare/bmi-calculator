import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const Color activeCardColor = Color(0xFF1D1E33);
const Color bottomContainerColor = Color(0xFFEB1555);
const Color genderColor = Color(0xFF8D8E98);
const double bottomContainerHeight = 80;

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(
                  color: activeCardColor,
                  cardChild:
                      IconContent(icon: FontAwesomeIcons.mars, label: 'MALE'),
                )),
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                    cardChild: IconContent(
                        icon: FontAwesomeIcons.venus, label: "FEMALE"),
                  ),
                ),
              ],
            )),
            Expanded(child: ReusableCard(color: activeCardColor)),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard(color: activeCardColor)),
                Expanded(child: ReusableCard(color: activeCardColor)),
              ],
            )),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}

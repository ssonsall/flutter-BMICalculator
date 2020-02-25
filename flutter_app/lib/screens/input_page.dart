import 'package:flutter/material.dart';
import 'package:flutter_app/components/reusable_card.dart';
import 'package:flutter_app/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI Calculator')),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                  child: ReusableCard(
                mIcon: FontAwesomeIcons.mars,
                mLabel: 'MALE',
                mColor: selectedGender == Gender.male
                    ? kActiveCardColor
                    : kInactiveCardColor,
                onPress: () {
                  setState(() {
                    selectedGender = Gender.male;
                  });
                },
              )),
              Expanded(
                  child: ReusableCard(
                mIcon: FontAwesomeIcons.venus,
                mLabel: 'FEMALE',
                mColor: selectedGender == Gender.female
                    ? kActiveCardColor
                    : kInactiveCardColor,
                onPress: () {
                  setState(() {
                    selectedGender = Gender.female;
                  });
                },
              ))
            ],
          )
          
        ],
      ),
    );
  }
}

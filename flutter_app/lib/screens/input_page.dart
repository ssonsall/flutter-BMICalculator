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
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("BMI CALCULATOR"),
        ),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                  child: ReusableCard(
                onPress: () {
                  print(Gender.male);
                  setState(() {
                    selectedGender = Gender.male;
                  });
                },
                mColor: selectedGender == Gender.male
                    ? kActiveCardColor
                    : kInactiveCardColor,
                cardChild: Column(
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.mars,
                      size: 80.0,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      "MALE",
                      style: kLabelTextStyle,
                    )
                  ],
                ),
              )),
              Expanded(
                  child: ReusableCard(
                onPress: () {
                  print(Gender.female);
                  setState(() {
                    selectedGender = Gender.female;
                  });
                },
                mColor: kActiveCardColor,
                cardChild: Column(
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.venus,
                      size: 80.0,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      "FEMALE",
                      style: kLabelTextStyle,
                    )
                  ],
                ),
              ))
            ],
          ),
          Expanded(
            child: ReusableCard(
              mColor: kActiveCardColor,
              cardChild: Column(
                children: <Widget>[
                  Text(
                    "HEIGHT",
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: '178', style: kNumberTextStyle),
                            TextSpan(text: ' cm', style: kLabelTextStyle),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        thumbColor: Colors.pink,
                        overlayColor: Color(0x1FEB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 25.0)),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: ReusableCard(
                cardChild: Text('안녕'),
                mColor: kInactiveCardColor,
              )),
              Expanded(
                  child: ReusableCard(
                cardChild: Text('반가워'),
                mColor: kInactiveCardColor,
              )),
            ],
          ),
          GestureDetector(
            onTap: null,
            child: Container(
                child: Center(
                  child: Text(
              'CALCULATE',
              style: kLargeButtonTextStyle,
            ),
                ), color: Colors.pink, width: double.infinity, height: 70.0,),
          )
        ],
      ),
    );
  }
}

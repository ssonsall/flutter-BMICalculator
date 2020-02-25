import 'package:flutter/material.dart';

import '../constants.dart';

class ReusableCard extends StatelessWidget {
  final IconData mIcon;
  final String mLabel;
  final Color mColor;
  final Function onPress;

  const ReusableCard(
      {@required this.mIcon,
      @required this.mLabel,
      @required this.mColor,
      @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Column(
            children: <Widget>[
              Icon(
                mIcon,
                size: 80.0,
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                mLabel,
                style: kLabelTextStyle,
              )
            ],
          ),
        ),
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: mColor,
            borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'Constants.dart';

class Reusable_Icon extends StatelessWidget {
  Reusable_Icon({@required this.icon, @required this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: kIconSize,
        ),
        SizedBox(
          height: kSizedBoxHeight,
        ),
        Text(
          label,
          style: kLableTextStyle,
        ),
      ],
    );
  }
}
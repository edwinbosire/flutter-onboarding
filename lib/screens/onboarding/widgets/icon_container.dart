import 'package:flutter/material.dart';
import 'package:onboarding/constants.dart';

class IconContainer extends StatelessWidget {
  final IconData icon;
  final double padding;

  const IconContainer({Key key, this.icon, this.padding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: kWhite.withOpacity(0.25),
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        size: 32.0,
        color: kWhite,
      ),
    );
  }
}

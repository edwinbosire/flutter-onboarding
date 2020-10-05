import 'package:flutter/material.dart';
import 'package:onboarding/constants.dart';
import 'package:onboarding/widgets/logo.dart';

class Header extends StatelessWidget {
  final VoidCallback onSkip;

  const Header({Key key, this.onSkip}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Logo(color: kWhite, size: 32.0),
        GestureDetector(
          onTap: onSkip,
          child: Text(
            'Skip',
            style: Theme.of(context).textTheme.subtitle1.copyWith(color: kWhite),
          ),
        )
      ],
    );
  }
}

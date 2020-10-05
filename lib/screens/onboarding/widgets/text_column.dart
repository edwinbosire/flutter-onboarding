import 'package:flutter/material.dart';
import 'package:onboarding/constants.dart';

class TextColumn extends StatelessWidget {
  final String title;
  final String text;

  const TextColumn({Key key, this.title, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          title,
          style: Theme.of(context).textTheme.headline5.copyWith(
                color: kWhite,
                fontWeight: FontWeight.bold,
              ),
        ),
        SizedBox(height: kSpaceS),
        Text(
          text,
          style: Theme.of(context).textTheme.subtitle1.copyWith(color: kWhite),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

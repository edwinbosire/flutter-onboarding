import 'package:flutter/material.dart';
import 'package:onboarding/constants.dart';
import 'package:onboarding/screens/onboarding/widgets/card_stack.dart';

class OnboardingPage extends StatelessWidget {
  final int number;
  final Widget lightCardChild;
  final Widget darkCardChild;
  final Widget textColumn;
  final Animation<Offset> lightCardOffsetAnimation;
  final Animation<Offset> darkCardOffsetAnimation;

  const OnboardingPage({
    @required this.number,
    @required this.lightCardChild,
    @required this.darkCardChild,
    @required this.textColumn,
    @required this.lightCardOffsetAnimation,
    @required this.darkCardOffsetAnimation,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CardStack(
          pageNumber: number,
          lightCardChild: lightCardChild,
          darkCardChild: darkCardChild,
          lightCardOffsetAnimation: lightCardOffsetAnimation,
          darkCardOffsetAnimation: darkCardOffsetAnimation,
        ),
        SizedBox(
          height: number % 2 == 1 ? 50.0 : 25.0,
        ),
        AnimatedSwitcher(
          duration: kCardAnimationDuration,
          child: textColumn,
        ),
      ],
    );
  }
}

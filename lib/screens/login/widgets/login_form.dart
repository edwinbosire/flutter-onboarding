import 'package:flutter/material.dart';
import 'package:onboarding/constants.dart';
import 'package:onboarding/screens/login/widgets/custom_input_field.dart';
import 'package:onboarding/screens/onboarding/onboarding.dart';

import 'custom_button.dart';
import 'fade_slide_transition.dart';

class LoginForm extends StatelessWidget {
  final Animation<double> animation;

  const LoginForm({this.animation});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    var space = height > 650 ? kSpaceM : kSpaceS;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPaddingL),
      child: Column(
        children: <Widget>[
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 0.0,
            child: CustomInputField(
              label: 'Username or Email',
              prefixIcon: Icons.person,
              obscureText: true,
            ),
          ),
          SizedBox(height: space),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: space,
            child: CustomInputField(
              label: 'Password',
              prefixIcon: Icons.lock,
              obscureText: true,
            ),
          ),
          SizedBox(height: space),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 2 * space,
            child: CustomButton(
              color: kBlue,
              textColor: kWhite,
              text: 'Login to continue',
              onPressed: () {},
            ),
          ),
          SizedBox(height: 2 * space),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 3 * space,
            child: CustomButton(
              color: kWhite,
              textColor: kBlack.withOpacity(0.5),
              text: 'Continue with Google',
              image: Image(
                image: AssetImage(kGoogleLogoPath),
                height: 48.0,
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(height: space),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 4 * space,
            child: CustomButton(
              color: kBlack,
              textColor: kWhite,
              text: 'Create a Bubble Account',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  var screenHeight = MediaQuery.of(context).size.height;
                  return Onboarding(screenHeight: screenHeight);
                }));
              },
            ),
          ),
        ],
      ),
    );
  }
}

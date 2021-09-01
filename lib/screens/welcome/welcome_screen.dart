import 'package:chat/constants.dart';
import 'package:chat/screens/signInOrSignUp/signin_or_signup_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeContext = Theme.of(context);
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Spacer(flex: 2),
        Image.asset("assets/images/welcome_image.png"),
        Spacer(flex: 3),
        Text("Welcome to our Bibeks messaging app",
            textAlign: TextAlign.center,
            style: themeContext.textTheme.headline5
                .copyWith(fontWeight: FontWeight.bold)),
        Spacer(),
        Text(
          "Talk any one with your own language.",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: themeContext.textTheme.bodyText1.color.withOpacity(0.64)),
        ),
        Spacer(flex: 3),
        FittedBox(
            child: TextButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SigninOrSignupScreen(),
                ));
          },
          child: Row(children: [
            Text("Skip",
                style: themeContext.textTheme.bodyText1.copyWith(
                    color: themeContext.textTheme.bodyText1.color
                        .withOpacity(0.8))),
            SizedBox(width: kDefaultPadding / 4),
            Icon(Icons.arrow_forward_ios,
                size: 16,
                color: themeContext.textTheme.bodyText1.color.withOpacity(0.8))
          ]),
        ))
      ],
    )));
  }
}

import 'package:flutter/material.dart';
import 'package:xolera/Screens/Login/login_screen.dart';
import 'package:xolera/Screens/Signup/components/or_divider.dart';
import 'package:xolera/Screens/Signup/signup_screen.dart';
import 'package:xolera/Screens/Welcome/components/background.dart';
import 'package:xolera/components/already_have_an_account_acheck.dart';
import 'package:xolera/components/rounded_button.dart';
import 'package:xolera/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/images/CatLogo.png",
              height: size.height * 0.35,
            ),
            RoundedButton(
              img: Image.asset("assets/icons/google.png"),
              text: "Continue with Google     ",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              icon: Icon(Icons.facebook),
              text: "  Continue with Facebook",
              color: Colors.indigo[900],
              textColor: Colors.white,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            RoundedButton(
              text: "Sign up with email",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.03),
          ],
        ),
      ),
    );
  }
}

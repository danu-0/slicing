import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:slicing/page/home.dart';
import 'package:slicing/page/sigup.dart';
import 'package:slicing/theme/theme.dart';
import 'package:slicing/widget/buton.dart';
import 'package:slicing/widget/form.dart';
import 'package:slicing/widget/textbuton.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bg3,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'LOGIN',
                    style: TextStyle(
                        color: primarytext,
                        fontWeight: FontWeight.w600,
                        fontSize: 24),
                  ),
                  Text(
                    'Sign in to Countinue',
                    style: TextStyle(
                        color: secondarytext,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                  const Gap(60),
                  CustomForm(
                      desk: 'Email Address', image: 'assets/icon_email.png'),
                  SizedBox(
                    height: 30,
                  ),
                  CustomForm(
                      desk: 'Password', image: 'assets/icon_password.png'),
                  const Gap(30),
                  buton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Home(),
                            ));
                      },
                      text: 'Sign In'),
                ],
              ),
              textbuton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  text: 'Sign Up',
                  requiredColor: primary)
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:slicing/page/home.dart';
import 'package:slicing/page/sigin.dart';
import 'package:slicing/theme/theme.dart';
import 'package:slicing/widget/buton.dart';
import 'package:slicing/widget/form.dart';
import 'package:slicing/widget/textbuton.dart';

class SignUp extends StatelessWidget {
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
                    'Sign Up',
                    style: TextStyle(
                        color: primarytext,
                        fontWeight: FontWeight.w600,
                        fontSize: 24),
                  ),
                  Text(
                    'Register and Happy Shoping',
                    style: TextStyle(
                        color: secondarytext,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                  const Gap(30),
                  CustomForm(desk: 'Full Name', image: 'assets/icon_name.png'),
                  const Gap(30),
                  CustomForm(
                      desk: 'Username', image: 'assets/icon_username.png'),
                  const Gap(30),
                  CustomForm(
                      desk: 'Email Address', image: 'assets/icon_email.png'),
                  const Gap(30),
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
                        MaterialPageRoute(builder: (context) => SignInPage()));
                  },
                  text: 'Sign in',
                  requiredColor: primary)
            ],
          ),
        ));
  }
}

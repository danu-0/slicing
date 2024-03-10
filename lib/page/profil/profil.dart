import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:slicing/page/profil/edit.dart';
import 'package:slicing/page/sigin.dart';
import 'package:slicing/theme/theme.dart';

class MyProfil extends StatelessWidget {
  const MyProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg3,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            height: 130,
            color: bg1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                        height: 60,
                        child: Image.asset('assets/image_profile.png')),
                    Gap(20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'HALLO, ALEX',
                          style: TextStyle(
                            color: primarytext,
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                          ),
                        ),
                        Text(
                          '@alexkein',
                          style: TextStyle(
                            color: secondarytext,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: 30,
                            width: 30,
                            child: AlertDialog(
                                backgroundColor: primary,
                                title: Text(
                                  'Allert',
                                  style: TextStyle(
                                      color: primarytext,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600),
                                ),
                                content: Text(
                                  'Wanna Log Out?',
                                  style: TextStyle(
                                      color: primarytext,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context); // Tutup dialog
                                    },
                                    child: Text(
                                      'NO',
                                      style: TextStyle(
                                          color: primarytext,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => SignInPage()),
                                        (Route<dynamic> route) => false,
                                      );
                                    },
                                    child: Text(
                                      'YES',
                                      style: TextStyle(
                                          color: primarytext,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ]),
                          );
                        });
                  },
                  child: Container(
                    height: 20,
                    child: Image.asset('assets/button_exit.png'),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Account',
                  style: TextStyle(
                      fontSize: 16,
                      color: primarytext,
                      fontWeight: FontWeight.w600),
                ),
                Gap(20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Edit()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Edit Profile',
                        style: TextStyle(
                            fontSize: 13,
                            color: secondarytext,
                            fontWeight: FontWeight.w400),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: secondarytext,
                      )
                    ],
                  ),
                ),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Your Order',
                      style: TextStyle(
                          fontSize: 13,
                          color: secondarytext,
                          fontWeight: FontWeight.w400),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: secondarytext,
                    )
                  ],
                ),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Help',
                      style: TextStyle(
                          fontSize: 13,
                          color: secondarytext,
                          fontWeight: FontWeight.w400),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: secondarytext,
                    )
                  ],
                ),
                Gap(20),
                Text(
                  'General',
                  style: TextStyle(
                      fontSize: 16,
                      color: primarytext,
                      fontWeight: FontWeight.w600),
                ),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Privacy & Policy',
                      style: TextStyle(
                          fontSize: 13,
                          color: secondarytext,
                          fontWeight: FontWeight.w400),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: secondarytext,
                    )
                  ],
                ),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Term of Service',
                      style: TextStyle(
                          fontSize: 13,
                          color: secondarytext,
                          fontWeight: FontWeight.w400),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: secondarytext,
                    )
                  ],
                ),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Rate App',
                      style: TextStyle(
                          fontSize: 13,
                          color: secondarytext,
                          fontWeight: FontWeight.w400),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: secondarytext,
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

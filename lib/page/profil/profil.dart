import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:slicing/page/chat/chatlist.dart';
import 'package:slicing/page/home.dart';
import 'package:slicing/page/profil/edit.dart';
import 'package:slicing/page/sigin.dart';
import 'package:slicing/theme/theme.dart';

class MyProfil extends StatefulWidget {
  MyProfil({super.key});

  @override
  State<MyProfil> createState() => _MyProfilState();
}

class _MyProfilState extends State<MyProfil> {
  final cController = Get.put(MyController());
  var currentIndex = 4;

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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          shape: const CircleBorder(side: BorderSide()),
          onPressed: () => cController.index.value = 3,
          backgroundColor: secondary,
          foregroundColor: primary,
          elevation: 0,
          child: Image.asset(
            "assets/icon_cart.png",
            height: 20,
            width: 20,
          ),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        child: BottomAppBar(
          notchMargin: 16.0,
          shape: const CircularNotchedRectangle(),
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                    setState(() {
                      currentIndex = 0;
                    });
                  },
                  child: Icon(
                    Icons.home,
                    color: currentIndex == 0 ? primary : secondarytext,
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyChat()));
                    setState(() {
                      currentIndex = 1;
                    });
                  },
                  child: Icon(
                    Icons.chat,
                    color: currentIndex == 1 ? primary : secondarytext,
                  ),
                ),
              ),
              Gap(50),
              SizedBox(width: 12), // Spacer
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/favorit');
                    setState(() {
                      currentIndex = 3;
                    });
                  },
                  child: Icon(
                    Icons.favorite,
                    color: currentIndex == 3 ? primary : secondarytext,
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyProfil()));
                    setState(() {
                      currentIndex = 4;
                    });
                  },
                  child: Icon(
                    Icons.person,
                    color: currentIndex == 4 ? primary : secondarytext,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

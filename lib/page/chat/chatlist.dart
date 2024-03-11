import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:slicing/theme/theme.dart';
import 'package:slicing/widget/buton.dart';

import '../home.dart';
import '../profil/profil.dart';

class MyChat extends StatefulWidget {
  const MyChat({super.key});

  @override
  State<MyChat> createState() => _MyChatState();
}

class _MyChatState extends State<MyChat> {
  var currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    final cController = Get.put(MyController());
    double appBarHeight = 85;
    return Scaffold(
      backgroundColor: bg3,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(appBarHeight),
        child: AppBar(
          title: Text(
            'Message Support',
            style: TextStyle(
              color: primarytext,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
          centerTitle: true,
          backgroundColor: bg1,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                Container(
                  height: 62,
                  child: Image.asset(
                    'assets/icon_headset.png',
                  ),
                ),
                Gap(30),
                Text(
                  "Opss no message yet?",
                  style: TextStyle(
                    color: primarytext,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Gap(10),
                Text(
                  "You have never done a transaction",
                  style: TextStyle(
                    color: secondarytext,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Gap(30),
                Container(
                  width: 152,
                  child: buton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    text: 'Explore Store',
                  ),
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
                      currentIndex = 2;
                    });
                  },
                  child: Icon(
                    Icons.chat,
                    color: currentIndex == 2 ? primary : secondarytext,
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

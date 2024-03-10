import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:slicing/page/profil/profil.dart';
import 'package:slicing/theme/theme.dart';
import 'package:slicing/widget/formP.dart';

class Edit extends StatelessWidget {
  const Edit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg3,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            height: 130,
            color: bg1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyProfil()));
                  },
                  child: Icon(
                    Icons.close,
                    color: primarytext,
                  ),
                ),
                Text(
                  'Edit Profile',
                  style: TextStyle(
                    color: primarytext,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
                Icon(
                  Icons.check,
                  color: primarytext,
                ),
              ],
            ),
          ),
          Gap(30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                child: Image.asset('assets/image_profile.png'),
              ),
              FormP(
                hintText: 'Alex Keinnzal',
                description: 'Name',
              ),
              FormP(
                hintText: '@alexkein',
                description: 'Username',
              ),
              FormP(
                hintText: 'alex.kein@gmail.com',
                description: 'Email Address',
              ),
            ],
          )
        ],
      ),
    );
  }
}

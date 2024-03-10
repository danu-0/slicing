import 'package:flutter/material.dart';
import 'package:slicing/page/chat/chatlist.dart';
import 'package:slicing/page/favorit/favorit.dart';
import 'package:slicing/page/home.dart';
import 'package:slicing/page/profil/profil.dart';
import 'page/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashScreen(),
        '/home': (context) => Home(),
        '/chat': (context) => MyChat(),
        '/favorit': (context) {
          final Map<String, String> product =
              ModalRoute.of(context)!.settings.arguments as Map<String, String>;
          return MyFavorit(product: product);
        },
        '/profil': (context) => MyProfil(),
      },
    );
  }
}

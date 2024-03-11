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
      onGenerateRoute: (settings) {
        if (settings.name == '/favorit') {
          Map<String, String>? product =
              settings.arguments as Map<String, String>?;

          return MaterialPageRoute(
            builder: (context) {
              if (product != null) {
                return MyFavorit(product: product);
              } else {
                return MyFavorit(
                  product: const {},
                );
              }
            },
          );
        }
      },
      routes: {
        '/splash': (context) => SplashScreen(),
        '/home': (context) => Home(),
        '/chat': (context) => MyChat(),
        '/favorit': (context, {Map<String, String>? product}) =>
            MyFavorit(product: product ?? {}),
        '/profil': (context) => MyProfil(),
      },
    );
  }
}

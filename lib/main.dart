import 'package:flutter/material.dart';
import 'package:instagram/screan/home_screan.dart';
import 'package:instagram/screan/login_screan.dart';
import 'package:instagram/screan/splash_screan.dart';
import 'package:instagram/screan/swich_account_screan.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScrean(),
    );
  }
}

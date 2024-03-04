import 'package:flutter/material.dart';
import 'package:instagram/screan/activity_screan.dart';
import 'package:instagram/screan/profile_screan.dart';
import 'package:instagram/screan/splash_screan.dart';

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
          style: ElevatedButton.styleFrom(backgroundColor: Color(0xffF35383)),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: ProfileScrean(),
      
    );
  }
}

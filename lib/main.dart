import 'package:flutter/material.dart';
import 'package:instagram/screan/login_screan.dart';


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
      home: LoginScrean(),
    );
  }
}

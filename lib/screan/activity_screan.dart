import 'package:flutter/material.dart';

class ActivityScrean extends StatefulWidget {
  @override
  State<ActivityScrean> createState() => _ActivityScreanState();
}

class _ActivityScreanState extends State<ActivityScrean> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: 90,
          color: Colors.white,
        ),
      ),
    );
  }
}

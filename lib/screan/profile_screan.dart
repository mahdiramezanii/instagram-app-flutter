import "package:flutter/material.dart";

class ProfileScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: Center(
        child: Text(
          "Mahdi ramezani",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

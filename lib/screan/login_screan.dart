import "package:flutter/material.dart";

class LoginScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Stack(
        children: [
          Positioned(
            top: 55,
            child: Expanded(
              child: Container(
                width: 428,
                height: 397,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.black,Colors.white])
                ),
                child: Image(
                  image: AssetImage("assets/images/rocket.png"),
                ),
              ),
            ),
          ),
          Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.transparent,
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

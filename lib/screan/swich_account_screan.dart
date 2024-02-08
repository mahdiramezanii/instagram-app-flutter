import 'dart:ui';

import "package:flutter/material.dart";
import 'package:hexcolor/hexcolor.dart';

class SwichAccountScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#1C1F2E"),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 90,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/shapes.png"),
                  ),
                ),
                child: Center(
                  child: ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 50.0,
                        sigmaY: 50.0,
                      ),
                      child: Container(
                        width: 340,
                        height: 352,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              colors: [
                                HexColor("#FFFFFF").withOpacity(0.5),
                                HexColor("#1C1F2E").withOpacity(0.2),
                              ],
                              begin: Alignment.topLeft,
                              end: AlignmentDirectional.bottomEnd),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 129,
                                height: 129,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.black),
                              ),
                              Text(
                                "Mahdi ramezani",
                                style: TextStyle(color: Colors.white),
                              ),
                              ElevatedButton(
                                style: Theme.of(context).elevatedButtonTheme.style,
                                onPressed: () {},
                                child: Text(
                                  "Coniform",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              Text(
                                "switch account",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have an account? /",
                      style: TextStyle(
                          color: HexColor("#FFFFFF"),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " Sign up",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

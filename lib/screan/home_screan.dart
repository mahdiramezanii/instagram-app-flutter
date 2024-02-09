import "dart:math";

import "package:flutter/material.dart";

class HomeScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: (){
            print("mahdi");
          },
          child: Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
          
              borderRadius: BorderRadius.circular(15),
              color: Colors.amber
            ),
            child: Padding(
              padding: EdgeInsets.all(3),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
              ),
            ),
          ),
        )
      ),
    );
  }
}

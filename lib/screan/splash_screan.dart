import "package:flutter/material.dart";

class SplashScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/pattern_1.png"),
          repeat: ImageRepeat.repeat,
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Stack(
              children: [
                Center(
                  child: SizedBox(
                    width: 155,
                    height: 77,
                    child: Image(
                      image: AssetImage("assets/images/Startlogo.png"),
                      width: 200,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 750),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: double.infinity,
                      ),
                      Text(
                        "from",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        "Expert Flutter",
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

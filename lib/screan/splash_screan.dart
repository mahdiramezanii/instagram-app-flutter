import "package:flutter/material.dart";
import "package:instagram/screan/login_screan.dart";
import "package:instagram/screan/swich_account_screan.dart";

class SplashScrean extends StatefulWidget {
  @override
  State<SplashScrean> createState() => _SplashScreanState();
}

class _SplashScreanState extends State<SplashScrean> {

  @override
  void initState(){
    super.initState();
    Duration secound=Duration(seconds: 3);
    Future.delayed(secound).then((value){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context){

          return LoginScrean();
        })
      );
    });
    
  }
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

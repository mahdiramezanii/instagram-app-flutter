import "package:flutter/material.dart";
import "package:instagram/screan/home_screan.dart";

class LoginScrean extends StatefulWidget {
  @override
  State<LoginScrean> createState() => _LoginScreanState();
}

class _LoginScreanState extends State<LoginScrean> {
  FocusNode negahban1 = FocusNode();
  FocusNode negahban2 = FocusNode();
  bool isShowPass = false;

  @override
  void initState() {
    super.initState();
    negahban1.addListener(() {
      setState(() {});
    });
    negahban2.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff323A99),
            Color(0xffF988FC),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            _gtImage(),
            _getBox(),
          ],
        ),
      ),
    );
  }

  Widget _getBox() {
    return Column(
      children: [
        Expanded(
            child: Container(
          color: Colors.transparent,
        )),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff1C1F2E),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            ),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 35,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Sign in to",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 118,
                          height: 50,
                          child: Image(
                            image: AssetImage("assets/images/minilogo.png"),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        focusNode: negahban1,
                        style: TextStyle(color: Colors.white),
                        // textAlign: TextAlign.right,

                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          labelText: " Email ",
                          hintText: "Enter Your Email",
                          hintStyle: TextStyle(color: Colors.white),
                          labelStyle: TextStyle(
                            color: negahban1.hasFocus
                                ? Color(0xffF35383)
                                : Colors.white,
                          ),
                          enabledBorder: OutlineInputBorder(
                            
                            
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                                BorderSide(color: Colors.white, width: 3),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Color(0xffF35383))),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        obscureText: !isShowPass,
                        keyboardType: TextInputType.visiblePassword,
                        focusNode: negahban2,
                        decoration: InputDecoration(
                          hintText: "Enter Your Password",
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.remove_red_eye_outlined,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              setState(() {
                                isShowPass = !isShowPass;
                              });
                            },
                          ),
                          labelText: " Password ",
                          labelStyle: TextStyle(
                              color: negahban2.hasFocus
                                  ? Color(0xffF35383)
                                  : Colors.white),
                          hintStyle: TextStyle(color: Colors.white),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                                BorderSide(color: Colors.white, width: 3),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              width: 3,
                              color: Color(0xffF35383),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    SizedBox(
                      height: 46,
                      width: 129,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return HomeScrean();
                              },
                            ),
                          );
                        },
                        child: Text(
                          "sign in",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don’t have an account? / ",
                          style: TextStyle(
                            color: Color(
                              0xffC5C5C5,
                            ),
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "Sign up",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _gtImage() {
    return Positioned(
      top: 80,
      left: 0,
      right: 0,
      bottom: 0,
      child: Column(
        children: [
          Expanded(
            child: Image(
              image: AssetImage("assets/images/rocket.png"),
            ),
          ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }
}

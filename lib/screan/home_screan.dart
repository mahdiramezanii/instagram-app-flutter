import "dart:ffi";
import "dart:ui";

import "package:flutter/material.dart";

class HomeScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff1C1F2E),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: _getAppBar(),
          body: Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    Expanded(
                      child: Container(
                        height: 100,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return _getYourStory(
                                text: "Your Story",
                                image: "assets/images/plus.png");
                          },
                        ),
                      ),
                    )
                  ]),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          _getPost(context)
                        ],
                      );
                    },
                  )
                ],
              ),
            ),
          ),
          bottomNavigationBar: Container(
            width: double.infinity,
            height: 83,
            decoration: BoxDecoration(
              color: Color.fromRGBO(39, 43, 64, 1),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(15)),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(
                    image: AssetImage("assets/images/b1.png"),
                  ),
                  Image(
                    image: AssetImage("assets/images/b2.png"),
                  ),
                  Image(
                    image: AssetImage("assets/images/b3.png"),
                  ),
                  Image(
                    image: AssetImage("assets/images/b4.png"),
                  ),
                  Container(
                    width: 26,
                    height: 26,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(1),
                      child: Container(
                        width: 22,
                        height: 22,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Image(
                          image: AssetImage("assets/images/b5.png"),
                        ),
                      ),
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _getAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      actions: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Image(
                  image: AssetImage("assets/images/minilogo.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.inbox_rounded,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _getYourStory({String? text, String? image}) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xff1C1F2E),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Image(image: AssetImage(image!)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              height: 16,
              width: 47,
              child: Text(
                textAlign: TextAlign.center,
                "${text!.substring(0, text.length)}",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _getPost(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 3),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: Color(0xffF35383),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xff1C1F2E),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Image(
                      image: AssetImage("assets/images/5.png"),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "amirahmadadibii",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "امیراحمد برنامه‌نویس موبایل",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
              SizedBox(
                width: 150,
              ),
              Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 30,
              )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          SizedBox(
            height: 430,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Positioned(
                  top: 0,
                  child: Container(
                    height: 394,
                    width: 394,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage("assets/images/p1.png"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Icon(
                    Icons.play_circle_fill,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 50.0,
                        sigmaY: 50.0,
                      ),
                      child: Container(
                        height: 46,
                        width: 340,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(255, 255, 255, 0.5),
                              Color.fromRGBO(255, 255, 255, 0.2),
                            ],
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Image(
                                  image: AssetImage("assets/images/heart.png"),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("2.6 K",
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                            Row(
                              children: [
                                Image(
                                  image:
                                      AssetImage("assets/images/comment.png"),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("2.6 K",
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                  barrierColor: Colors.transparent,
                                  backgroundColor: Colors.transparent,
                                  context: context,
                                  builder: (context) {
                                    return DraggableScrollableSheet(
                                        initialChildSize: 0.8,
                                        minChildSize: 0.8,
                                        maxChildSize: 1,
                                        builder: (context,
                                            ScrollController controller) {
                                          return _buttonSheet(controller);
                                        });
                                  },
                                );
                              },
                              child: Image(
                                image: AssetImage("assets/images/sh.png"),
                              ),
                            ),
                            Image(image: AssetImage("assets/images/save.png"))
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buttonSheet(ScrollController controller) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
        child: Container(
          width: 394,
          height: 394,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(255, 255, 255, 0.5),
                Color.fromRGBO(255, 255, 255, 0.3),
              ],
            ),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 40,
            ),
            width: 350,
            height: 557,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image(
                  image: AssetImage("assets/images/line.png"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Share",
                      style: TextStyle(color: Colors.black),
                    ),
                    Icon(Icons.inbox_rounded),
                  ],
                ),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromRGBO(255, 255, 255, 0.4),
                    contentPadding: EdgeInsets.all(2),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 50,
                    ),
                    hintStyle: TextStyle(color: Colors.white),
                    hintText: "Serach....",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),
                      borderSide: BorderSide(width: 3, style: BorderStyle.none),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),
                      borderSide: BorderSide(style: BorderStyle.none),
                    ),
                  ),
                ),
                SizedBox(
                  height: 270,
                  child: GridView.builder(
                    controller: controller,
                    itemCount: 30,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 8,
                        crossAxisCount: 3),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        color: Colors.cyan,
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

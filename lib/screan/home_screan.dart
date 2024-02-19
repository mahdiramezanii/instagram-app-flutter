import "dart:ui";

import "package:flutter/material.dart";
import "package:instagram/controller/data.dart";
import "package:instagram/controller/models.dart";

class HomeScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<PostData> post_data = get_data_post();
    List<Strory> story_data = get_story_list();

    return Container(
      color: Color(0xff1C1F2E),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: _getAppBar(),
          body: Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 100,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: story_data.length,
                            itemBuilder: (context, index) {
                              return index == 0
                                  ? _getYourStory(
                                      text: "Story",
                                      image: "assets/images/plus.png")
                                  : _getYourStory(
                                      text: "${story_data[index].username!}",
                                      image: "${story_data[index].image!}");
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    return Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        _getPost(context,
                            username: post_data[index].username!,
                            comment: post_data[index].comment!,
                            full_name: post_data[index].full_name!,
                            like: post_data[index].like!,
                            post: post_data[index].post_image!,
                            user_image: post_data[index].user_image!)
                      ],
                    );
                  }, childCount: post_data.length),
                ),
              ],
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

  Widget _getPost(
    BuildContext context, {
    required String post,
    required String user_image,
    required String full_name,
    required String username,
    required int comment,
    required int like,
  }) {
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
                      image: AssetImage(user_image),
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
                    "$username",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "$full_name",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
              Spacer(),
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
                          image: AssetImage(post), fit: BoxFit.cover),
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
                                Text("$like K",
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
                                Text("$comment K",
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                  isScrollControlled: true,
                                  barrierColor: Colors.transparent,
                                  backgroundColor: Colors.transparent,
                                  context: context,
                                  builder: (context) {
                                    return Padding(
                                      padding: EdgeInsets.only(
                                          bottom: MediaQuery.of(context)
                                              .viewInsets
                                              .bottom),
                                      child: DraggableScrollableSheet(
                                          initialChildSize: 0.4,
                                          minChildSize: 0.2,
                                          maxChildSize: 0.8,
                                          builder: (context,
                                              ScrollController controller) {
                                            return _buttonSheet(controller);
                                          }),
                                    );
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
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(255, 255, 255, 0.5),
                Color.fromRGBO(255, 255, 255, 0.2),
              ],
            ),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: CustomScrollView(
              controller: controller,
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      Image(
                        image: AssetImage("assets/images/line.png"),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Share",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.inbox_rounded,
                            size: 30,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
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
                            borderSide:
                                BorderSide(width: 3, style: BorderStyle.none),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13),
                            borderSide: BorderSide(style: BorderStyle.none),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                    childCount: 20,
                    (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.cyan,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: AssetImage("assets/images/u1.png"))),
                          ),
                          Text(
                            "Mahdi Ramezani",
                            textAlign: TextAlign.center,
                          )
                        ],
                      );
                    },
                  ),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 20,
                      mainAxisExtent: 100,
                      mainAxisSpacing: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

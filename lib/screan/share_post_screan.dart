import 'package:flutter/material.dart';

class SharePostScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff1C1F2E),
        body: Padding(
            padding: const EdgeInsets.all(15),
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                ScrolContent(),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blue
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }

  Widget ScrolContent() {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Container(
            child: Row(
              children: [
                Text(
                  "Post",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Image(
                  image: AssetImage("assets/images/down.png"),
                ),
                Spacer(),
                Text(
                  "Next",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Image(
                  image: AssetImage("assets/images/shift.png"),
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.only(top: 30, bottom: 10),
            width: 375,
            height: 394,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(13),
            ),
          ),
        ),
        SliverGrid(
          delegate: SliverChildBuilderDelegate(
            childCount: 10,
            (context, index) {
              return Container(
                width: 128,
                height: 128,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
              );
            },
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.only(bottom: 20),
        ),
      ],
    );
  }
}

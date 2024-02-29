import 'package:flutter/material.dart';

class SharePostScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff1C1F2E),
        body: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            ScrolContent(),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 83,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(39, 43, 64, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Draft",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        "Gallery",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        "Take",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget ScrolContent() {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
            margin: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            width: 375,
            height: 394,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(13),
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
          sliver: SliverGrid(
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
        ),
        SliverPadding(
          padding: EdgeInsets.only(bottom: 80),
        ),
      ],
    );
  }
}

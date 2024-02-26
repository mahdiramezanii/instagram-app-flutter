import "package:flutter/material.dart";
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram/screan/share_post_screan.dart';

class ExploreScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1C1F2E),
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: serchBox(),
              ),
              SliverToBoxAdapter(
                child: tag_list(),
              ),
              SliverPadding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                sliver: content(),
              ),
            ],
          ),
        ),
        bottomNavigationBar: bottonNav(context));
  }

  Widget bottonNav(BuildContext context) {
    return Container(
      height: 83,
      decoration: BoxDecoration(
          color: Color.fromRGBO(39, 43, 64, 1),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12))),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Image(
          image: AssetImage("assets/images/b1.png"),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return SharePostScrean();
            }));
          },
          child: Image(
            image: AssetImage("assets/images/b2.png"),
          ),
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
              borderRadius: BorderRadius.circular(6), color: Colors.white),
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
    );
  }

  Widget serchBox() {
    return Container(
      margin: EdgeInsets.all(10),
      width: 394,
      height: 46,
      decoration: BoxDecoration(
          color: Color.fromRGBO(39, 43, 64, 1),
          borderRadius: BorderRadius.circular(13)),
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.search,
            color: Colors.white,
            size: 30,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  hintText: "Serach....",
                  hintStyle: TextStyle(color: Colors.white),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none),
            ),
          ),
          Image.asset("assets/images/scan.png"),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }

  Widget tag_list() {
    return Container(
      margin: EdgeInsets.only(bottom: 20, top: 20),
      height: 30,
      width: 60,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color.fromRGBO(39, 43, 64, 1),
            ),
            child: Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 3),
                child: Text(
                  "amirahmafadibi",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget content() {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate((context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            // image: DecorationImage(
            //     image: AssetImage("assets/images/item$index.png"),
            //     fit: BoxFit.cover),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: FittedBox(
              fit: BoxFit.cover,
              child: Image.asset("assets/images/item$index.png"),
            ),
          ),
        );
      }, childCount: 10),
      gridDelegate: SliverQuiltedGridDelegate(
        crossAxisCount: 3,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        repeatPattern: QuiltedGridRepeatPattern.inverted,
        pattern: [
          QuiltedGridTile(2, 1),
          QuiltedGridTile(2, 2),
          QuiltedGridTile(1, 1),
          QuiltedGridTile(1, 1),
          QuiltedGridTile(1, 1),
        ],
      ),
    );
  }
}

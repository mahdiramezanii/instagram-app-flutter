import "package:flutter/material.dart";
import "package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart";

class ProfileScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(20),
                    child: Container(
                      height: 20,
                      decoration: BoxDecoration(
                        color: Color(0xff1C1F2E),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  expandedHeight: 170,
                  backgroundColor: Color(0xff1C1F2E),
                  actions: [
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                    )
                  ],
                  flexibleSpace: FlexibleSpaceBar(
                    background: Image.asset(
                      "assets/images/header.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: _getHeader(),
                ),
                SliverPersistentHeader(
                  pinned: true,
                  floating: true,
                  delegate: TabBarViewDelegate(
                    TabBar(
                      dividerColor: Colors.transparent,
                      indicatorColor: Colors.pink,
                      tabs: [
                        Tab(
                          icon: Image.asset("assets/images/image.png"),
                        ),
                        Tab(
                          icon: Image.asset("assets/images/bookmark.png"),
                        ),
                      ],
                    ),
                  ),
                ),
              ];
            },
            body: TabBarView(children: [
              CustomScrollView(
                slivers: [
                  SliverGrid(
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
                              child:
                                  Image.asset("assets/images/item$index.png"),
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
                      ))
                ],
              ),
              CustomScrollView(
                slivers: [
                  SliverGrid(
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
                              child:
                                  Image.asset("assets/images/item$index.png"),
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
                      ))
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Widget _getHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(width: 3, color: Colors.pink),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Image.asset("assets/images/mahdi.jpeg"),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "مهدی رمضانی برنامه نویس موبایل",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Mahdiramezani.dev",
                    style: TextStyle(
                        color: Color.fromRGBO(197, 197, 197, 1),
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Spacer(),
              Image(
                image: AssetImage("assets/images/edit.png"),
                color: Colors.white,
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          RichText(
            textDirection: TextDirection.rtl,
            maxLines: 5,
            text: TextSpan(
              text: """برنامه‌نویسی فلاتر و اندروید ، مدرس محبوب‌ترین
دوره مـکتـبـخونـه و بـرنـامـه نـویـس سـابـق زریـن پـال
تـخـصـص بـرنـامـه‌نـویسی یعنی اینده و تاثیر گذاری
آموزش رایگان 👇""",
              style: TextStyle(fontSize: 14),
            ),
          ),
          Row(
            children: [
              Image(
                image: AssetImage("assets/images/link.png"),
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "yek.link/Mahdiramezani.dev",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                    fontWeight: FontWeight.w900),
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Image(image: AssetImage("assets/images/work.png")),
              Text(
                "  Developer",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 13,
              ),
              Image(image: AssetImage("assets/images/location.png")),
              Text(
                "  Developer",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Text(
                "23",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Posts",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "16.3K",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Followers",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "23",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Following",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(160, 46),
                ),
                onPressed: () {},
                child: Text(
                  "Follow",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(160, 46)
                ),
                  onPressed: () {},
                  child: Text(
                    "Message",
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
          SizedBox(height: 15,)
        ],
      ),
    );
  }
}

class TabBarViewDelegate extends SliverPersistentHeaderDelegate {
  TabBarViewDelegate(this._tabbar);
  final _tabbar;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Color(0xff1C1F2E),
      child: _tabbar,
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => _tabbar.preferredSize.height + 10;

  @override
  // TODO: implement minExtent
  double get minExtent => _tabbar.preferredSize.height + 10;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return false;
  }
}

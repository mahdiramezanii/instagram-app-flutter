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
              Container(
                color: Colors.green,
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(width: 3, color: Colors.pink),
            ),
            child: Image.asset("assets/images/profile.png"),
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
    );
  }
}

class TabBarViewDelegate extends SliverPersistentHeaderDelegate {
  TabBarViewDelegate(this._tabbar);
  final _tabbar;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return _tabbar;
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

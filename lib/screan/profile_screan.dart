import "package:flutter/material.dart";

class ProfileScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
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
                backgroundColor:Color(0xff1C1F2E) ,
                actions: [Icon(Icons.menu,color: Colors.white,)],
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
              SliverPersistentHeader(pinned: true,floating: true,delegate:TabBarView() )
            ];
          },
          body: Container(
            color: Color(0xff1C1F2E),
          
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


class TabBarView extends SliverPersistentHeaderDelegate{
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
  
  return Container(
    color: Colors.red,
  );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 400;

  @override
  // TODO: implement minExtent
  double get minExtent =>50;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return true;
  }




}

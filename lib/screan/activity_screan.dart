import 'package:flutter/material.dart';
import "package:instagram/controller/enum_status_activity.dart";

class ActivityScrean extends StatefulWidget {
  @override
  State<ActivityScrean> createState() => _ActivityScreanState();
}

class _ActivityScreanState extends State<ActivityScrean>
    with SingleTickerProviderStateMixin {
  TabController? _tabcontroller;
  ActivityStatus? status;

  @override
  void initState() {
    super.initState();
    _tabcontroller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 70,
              color: Color(0xff1C1F2E),
              child: TabBar(
                dividerHeight: 0.0,
                labelColor: Colors.white,
                labelStyle: TextStyle(fontSize: 16),
                unselectedLabelStyle:
                    TextStyle(color: Color.fromRGBO(197, 197, 197, 1)),
                indicatorColor: Colors.pink,
                controller: _tabcontroller,
                tabs: [
                  Tab(
                    text: "Following",
                  ),
                  Tab(
                    text: "You",
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabcontroller,
                children: [
                  CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Text(
                            'New',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate((context, index) {
                          return getFollowing(ActivityStatus.like);
                        }, childCount: 2),
                      ),
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Text(
                            'Today',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate((context, index) {
                          return getFollowing(ActivityStatus.message);
                        }, childCount: 2),
                      ),
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Text(
                            'This week',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate((context, index) {
                          return getFollowing(ActivityStatus.follow);
                        }, childCount: 8),
                      ),
                    ],
                  ),
                  CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Text(
                            'New',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate((context, index) {
                          return getFollowing(ActivityStatus.message);
                        }, childCount: 2),
                      ),
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Text(
                            'Today',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate((context, index) {
                          return getFollowing(ActivityStatus.like);
                        }, childCount: 2),
                      ),
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Text(
                            'This week',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate((context, index) {
                          return getFollowing(ActivityStatus.follow);
                        }, childCount: 8),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getFollowing(ActivityStatus status) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 20),
          child: Row(
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.all(Radius.circular(100))),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 40,
                height: 40,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: FittedBox(
                    child: Image(image: AssetImage("assets/images/b5.png")),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "amirahmadadibii",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Started following",
                        style: TextStyle(
                          color: Color.fromRGBO(197, 197, 197, 1),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "you",
                        style: TextStyle(
                          color: Color.fromRGBO(197, 197, 197, 1),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "3 min",
                        style: TextStyle(
                          color: Color.fromRGBO(197, 197, 197, 1),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),
              getRowStatus(status),
            ],
          ),
        ),
      ],
    );
  }

  Widget getRowStatus(ActivityStatus status) {
    switch (status) {
      case ActivityStatus.follow:
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pink,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(6),
              ),
            ),
          ),
          onPressed: () {},
          child: Text(
            "Follow",
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        );
      case ActivityStatus.like:
        return Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
        );

      case ActivityStatus.message:
        return OutlinedButton(
          style: OutlinedButton.styleFrom(
            side: BorderSide(width: 1, color: Colors.white),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          onPressed: () {},
          child: Text(
            "Message",
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        );

      default:
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pink,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(6),
              ),
            ),
          ),
          onPressed: () {},
          child: Text(
            "Follow",
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        );
    }
  }
}

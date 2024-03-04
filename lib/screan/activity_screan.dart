import 'package:flutter/material.dart';

class ActivityScrean extends StatefulWidget {
  @override
  State<ActivityScrean> createState() => _ActivityScreanState();
}

class _ActivityScreanState extends State<ActivityScrean>
    with SingleTickerProviderStateMixin {
  TabController? _tabcontroller;

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
                              horizontal: 50, vertical: 40),
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
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            return getFollowing();
                          },
                          childCount: 2
                        ),
                      ),
                    ],
                  ),
                  Container(
                    color: Color(0xff1C1F2E),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getFollowing() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
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
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

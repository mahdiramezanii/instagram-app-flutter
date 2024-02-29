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
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: 50,
          color: Color(0xff1C1F2E),
          child: TabBar(
              dividerHeight: 0.0,
            labelColor: Colors.white,
            labelStyle: TextStyle(fontSize: 16),
            
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
      ),
    );
  }
}

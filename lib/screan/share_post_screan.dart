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
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                automaticallyImplyLeading: false,
                
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                elevation: 0,
                pinned: true,
                expandedHeight: 10.0,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Padding(
                    padding: const EdgeInsets.only(top: 8),
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
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  margin: EdgeInsets.only(top: 30),
                  width: 375,
                  height: 394,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(13),
                  ),
                ),
              ),
              SliverGrid(
                delegate: SliverChildBuilderDelegate((context, index) {
                  return Container(
                    width: 128,
                    height: 128,
                    color: Colors.white,
                  );
                }),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, crossAxisSpacing: 3, mainAxisSpacing: 1),
              )
            ],
          ),
          // Column(
          //   children: [

          //     ),

          //     Expanded(
          //       child: GridView.builder(

          //           itemBuilder: (BuildContext context, int index) {
          //             return Container(
          //               width: 128,
          //               height: 128,
          //               color: Colors.white,
          //             );
          //           }),
          //     )
          //   ],
          // ),
        ),
      ),
    );
  }
}

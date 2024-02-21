import "package:flutter/material.dart";

class ExploreScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
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
                          hintText: "Serach...",
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
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              height: 23,
              width: 60,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 23,
                      width: 60,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color.fromRGBO(39, 43, 64, 1),
                      ),
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: Text(
                          "Ali",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

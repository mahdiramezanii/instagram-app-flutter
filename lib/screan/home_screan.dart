import "package:flutter/material.dart";

class HomeScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff1C1F2E),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: _getAppBar(),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _getYourStory(
                        text: "Your Story", image: "assets/images/plus.png"),
                    _getYourStory(
                        text: "Your Story", image: "assets/images/2.png"),
                    _getYourStory(
                        text: "Your Story", image: "assets/images/3.png"),
                    _getYourStory(
                        text: "Your Story", image: "assets/images/4.png"),
                    _getYourStory(
                        text: "MAhdi_bahdjhwhgjf",
                        image: "assets/images/2.png"),
                    _getYourStory(
                        text: "Your Story", image: "assets/images/plus.png"),
                    _getYourStory(
                        text: "Your Story", image: "assets/images/plus.png"),
                    _getYourStory(
                        text: "Your Story", image: "assets/images/plus.png"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _getAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      actions: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Image(
                  image: AssetImage("assets/images/minilogo.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.inbox_rounded,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _getYourStory({String? text, String? image}) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xff1C1F2E),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Image(image: AssetImage(image!)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              height: 16,
              width: 47,
              child: Text(
                textAlign: TextAlign.center,
                "${text!.substring(0, text.length)}",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

import "package:flutter/material.dart";

class ButtonNavigationScrean extends StatefulWidget {
  @override
  State<ButtonNavigationScrean> createState() => _ButtonNavigationState();
}

class _ButtonNavigationState extends State<ButtonNavigationScrean> {
  int? _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 85,
        decoration: BoxDecoration(
          color: Color(0xff1C1F2E),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          fixedColor: Colors.red[900],
          currentIndex: _selectedIndex!,
          selectedFontSize: 20,
          unselectedItemColor: Colors.white,
          selectedLabelStyle:
              TextStyle(color: Colors.amber, fontWeight: FontWeight.normal),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 35,
          type: BottomNavigationBarType.fixed,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              // icon: Image.asset("assets/images/b1.png"),
              icon: Icon(Icons.home_outlined),
              label: "mahdi5",
            ),
            BottomNavigationBarItem(
              // icon: Image.asset("assets/images/b2.png"),
              icon: Icon(Icons.search),
              label: "mahdi4",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline),
              label: "mahdi3",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline),
              label: "mahdi",
            ),
            BottomNavigationBarItem(
              icon: Container(
                height: 26,
                width: 26,
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color:
                          _selectedIndex == 4 ? Colors.red : Colors.transparent,
                    ),
                    
                    borderRadius: BorderRadius.circular(6)),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Image.asset("assets/images/mahdi.jpeg"),
                    )),
              ),
              label: "mahdi",
            ),
          ],
        ),
      ),
      body: Center(
        child: Text("Data"),
      ),
    );
  }
}

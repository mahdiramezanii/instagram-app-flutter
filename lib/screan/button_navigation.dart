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
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey,
          fixedColor: Colors.red[900],
          currentIndex: _selectedIndex!,
          selectedFontSize: 20,
          selectedLabelStyle:
              TextStyle(color: Colors.amber, fontWeight: FontWeight.normal),
          showSelectedLabels: false,
          // showUnselectedLabels: false,
          iconSize: 30,
          type: BottomNavigationBarType.fixed,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.sports_football_outlined), label: "mahdi5"),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu_book), label: "mahdi4"),
            BottomNavigationBarItem(icon: Icon(Icons.refresh), label: "mahdi3"),
            BottomNavigationBarItem(
                icon: Icon(Icons.abc_sharp), label: "mahdi"),
          ]),
      body: Center(
        child: Text("Data"),
      ),
    );
  }
}

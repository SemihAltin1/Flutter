import 'package:flutter/material.dart';
/* import page1
   import page2
   import page3
*/


class BottomNavigation extends StatefulWidget {
  const BottomNavigation({ Key? key }) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedPage=0;
  late List<Widget> pageList;
  @override
  void initState() {
    super.initState();
    pageList=[
        Page1(),
        Page2(),
        Page3()
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BottomNavigation"),),
      body: pageList[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedPage,
        onTap: (int selectedPosition){
          setState(() {
            selectedPage=selectedPosition;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile"
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings"
            ),
        ]
        ),
    );
  }
}
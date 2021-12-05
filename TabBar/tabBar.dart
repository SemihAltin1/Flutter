import 'package:flutter/material.dart';
/*
  import page1
  import page2
  import page3
*/

class TabBarPage extends StatefulWidget{
 

  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> with SingleTickerProviderStateMixin{
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController=TabController(length: 3, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TabBar"),),
      body: Column(children: [
        TabBar(
          controller: tabController,
          tabs: [
            Tab(child: Text("Page1",style: TextStyle(color: Colors.blue,fontSize: 17))),
            Tab(child: Text("Page2",style: TextStyle(color: Colors.blue,fontSize: 17))),
            Tab(child: Text("Page3",style: TextStyle(color: Colors.blue,fontSize: 17)))
        ]
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: [
              Page1(),
              Page2(),
              Page3()
            ]
            ),
        )
      ],),
    );
  }
}
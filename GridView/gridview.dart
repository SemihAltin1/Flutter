import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({ Key? key }) : super(key: key);

  Widget createContainer(Color color){
    return Container(
      decoration: BoxDecoration(
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GridView"),),
      body: GridView.count(
        padding: EdgeInsets.all(10),
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [
          createContainer(Colors.redAccent),
          createContainer(Colors.blueAccent),
          createContainer(Colors.orangeAccent),
          createContainer(Colors.purpleAccent),
        ],
        ),
    );
  }
}
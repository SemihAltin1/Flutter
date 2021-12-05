
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class FlipCardPage extends StatelessWidget {
  Widget container()
  {
    return Container();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flip Card"),),
      body: Center(
        child: FlipCard(
            front: Container(
              width: 150,
              height: 150,
              color: Colors.limeAccent,
              child: Center(child: Text("Front")),
            ), 
            back: Container(
              width: 150,
              height: 150,
              color: Colors.purpleAccent,
              child: Center(child: Text("Back")),
            )
            ),
      )
    );
  }
}
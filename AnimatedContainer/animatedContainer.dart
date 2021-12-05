import 'package:flutter/material.dart';


class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({ Key? key }) : super(key: key);

  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double containerHeight=60;
  double containerWidth=60;
  startAnimation()
  {
      setState(() {
        containerHeight=200;
        containerWidth=200;
        Future.delayed(Duration(seconds: 1),(){
          setState(() {
            containerWidth=60;
            containerHeight=60;
          });
        });
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animated Container"),),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            AnimatedContainer(
              width: containerWidth,
              height: containerHeight,
              curve: Curves.bounceOut,
              decoration: BoxDecoration(color: Colors.green),
              duration: Duration(milliseconds: 500)
              ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: (){
                  startAnimation();
              }, 
              child: Text("Start Animation")
              )
        ],),
      ),
    );
  }
}
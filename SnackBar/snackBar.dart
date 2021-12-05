import 'package:flutter/material.dart';

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SnackBar")),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
            ElevatedButton(
            onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  duration: const Duration(seconds: 2),
                  content: Text("Deleted")
                  ));
            }, 
            child: Text("Delete")
            ),
      ],),
    );
  }
}
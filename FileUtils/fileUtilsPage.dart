import 'package:flutter/material.dart';
//import file_utils class

class FileUtilsPage extends StatefulWidget {

  @override
  _FileUtilsPageState createState() => _FileUtilsPageState();
}

class _FileUtilsPageState extends State<FileUtilsPage> {
  var textController = TextEditingController();
  String text="Text";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FileUtils")),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          TextField(
            controller: textController,
            decoration: InputDecoration(labelText: "Enter Text"),
          ),
          ElevatedButton(
            onPressed: (){
                FileUtils.saveToFile(textController.text);
            }, 
            child: Text("Save to tile")
            ),
          SizedBox(height: 30),

          Text(text),
          ElevatedButton(
            onPressed: ()async{
                setState(() {
                  FileUtils.readFromFile().then((value) {
                    setState(() {
                      text=value;
                    });
                  });
                });
            }, 
            child: Text("Read From File")
            ),
        ],
      ),     
    );
  }
}
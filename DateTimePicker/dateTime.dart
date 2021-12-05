import 'package:flutter/material.dart';

class DateTimePage extends StatefulWidget {

  @override
  _DateTimePageState createState() => _DateTimePageState();
}

class _DateTimePageState extends State<DateTimePage> {
  String date="Date";
  String time="Time";

  Future selectDate()async{
      final pickedDate=await showDatePicker(
        context: context, 
        initialDate: DateTime.now(), 
        firstDate: DateTime(2000), 
        lastDate: DateTime(2030)
        );
        if(pickedDate!=null){
            setState(() {
              date="${pickedDate.year}-${pickedDate.month}-${pickedDate.day}";
            });
        }
  }

  Future selectTime()async{
    final pickedTime=await showTimePicker(
      context: context, 
      initialTime: TimeOfDay.now()
      );
      if(pickedTime!=null)
      {
          setState(() {
            time="${pickedTime.hour}:${pickedTime.minute}";
          });
      }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Date Time Picker")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(children: [
          Text(date),
          ElevatedButton(
            onPressed: (){
                selectDate();
            }, 
            child: Text("Select Date")
            ),
            SizedBox(height: 30),

            Text(time),
            ElevatedButton(
            onPressed: (){
                selectTime();
            }, 
            child: Text("Select Time")
            ),
        ],),
      ),
    );
  }
}
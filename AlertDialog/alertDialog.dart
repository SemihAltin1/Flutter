import 'package:flutter/material.dart';

class AlertDialogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AlertDialog"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('Delete'),
                  content: const Text('Are you sure you want to delete this item'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => print("Deleted"),
                      child: const Text('Delete'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Cancel'),
                    ),
                  ],
                ),
              );
            },
            child: Text("Delete")),
      ),
    );
  }
}

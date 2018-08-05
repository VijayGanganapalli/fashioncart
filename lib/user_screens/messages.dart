import 'package:flutter/material.dart';

class Messages extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Messages"),
      ),
      body: Center(
        child: Text(
          "Messages Page",
          style: TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}

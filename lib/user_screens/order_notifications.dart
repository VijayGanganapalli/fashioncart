import 'package:flutter/material.dart';

class OrderNotifications extends StatefulWidget {
  @override
  _OrderNotificationsState createState() => _OrderNotificationsState();
}

class _OrderNotificationsState extends State<OrderNotifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order Notifications"),
      ),
      body: Center(
        child: Text(
          "Order Notifications Page",
          style: TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}

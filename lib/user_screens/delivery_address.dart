import 'package:flutter/material.dart';

class DeliveryAddress extends StatefulWidget {
  @override
  _DeliveryAddressState createState() => _DeliveryAddressState();
}

class _DeliveryAddressState extends State<DeliveryAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Delivery Address"),
      ),
      body: Center(
        child: Text(
          "Delivery Address Page",
          style: TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ProfileSettings extends StatefulWidget {
  @override
  _ProfileSettingsState createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Settings"),
      ),
      body: Center(
        child: Text(
          "Profile Settings Page",
          style: TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}


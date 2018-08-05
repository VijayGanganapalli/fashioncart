import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'favorites.dart';
import 'messages.dart';
import 'cart.dart';
import 'order_notifications.dart';
import 'order_history.dart';
import 'profile_settings.dart';
import 'delivery_address.dart';
import 'about_us.dart';
import 'login_logout.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  BuildContext context;

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      appBar: AppBar(
        title: Text("Fashion Cart"),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator
                  .of(context)
                  .push(CupertinoPageRoute(builder: (BuildContext context) {
                return Favorites();
              }));
            },
          ),
          Stack(
            alignment: Alignment.topLeft,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.chat,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator
                      .of(context)
                      .push(CupertinoPageRoute(builder: (BuildContext context) {
                    return Messages();
                  }));
                },
              ),
              CircleAvatar(
                radius: 8.0,
                backgroundColor: Colors.yellow,
                child: Text(
                  "0",
                  style: TextStyle(color: Colors.black, fontSize: 8.0),
                ),
              )
            ],
          )
        ],
      ),
      body: Center(
        child: Text(
          "Home Page",
          style: TextStyle(fontSize: 25.0),
        ),
      ),
      floatingActionButton: Stack(
        alignment: Alignment.topLeft,
        children: <Widget>[
          FloatingActionButton(
            child: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator
                  .of(context)
                  .push(CupertinoPageRoute(builder: (BuildContext context) {
                return Cart();
              }));
            },
          ),
          CircleAvatar(
            radius: 8.0,
            backgroundColor: Colors.yellow,
            child: Text(
              "0",
              style: TextStyle(color: Colors.black, fontSize: 10.0),
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                "Vijay Kumar",
                style: TextStyle(color: Colors.white),
              ),
              accountEmail: Text(
                "vijayganganapalli@gmail.com",
                style: TextStyle(color: Colors.white),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(
                  Icons.notifications,
                  size: 20.0,
                ),
              ),
              title: Text("Order Notifications"),
              onTap: () {
                Navigator.of(context).push(
                    CupertinoPageRoute(builder: (BuildContext context) {
                      return OrderNotifications();
                    }));
              },
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(
                  Icons.history,
                  size: 20.0,
                ),
              ),
              title: Text("Order History"),
              onTap: (){
                Navigator.of(context).push(CupertinoPageRoute(builder: (BuildContext context) {
                  return OrderHistory();
                }));
              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(
                  Icons.person,
                  size: 20.0,
                ),
              ),
              title: Text("Profile Settings"),
              onTap: (){
                Navigator.of(context).push(CupertinoPageRoute(builder: (BuildContext context) {
                  return ProfileSettings();
                }));
              },
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(
                  Icons.home,
                  size: 20.0,
                ),
              ),
              title: Text("Delivery Address"),
              onTap: (){
                Navigator.of(context).push(CupertinoPageRoute(builder: (BuildContext context) {
                  return DeliveryAddress();
                }));
              },
            ),
            Divider(),
            ListTile(
              trailing: CircleAvatar(
                child: Icon(
                  Icons.help,
                  size: 20.0,
                ),
              ),
              title: Text("About Us"),
              onTap: (){
                Navigator.of(context).push(CupertinoPageRoute(builder: (BuildContext context) {
                  return AboutUs();
                }));
              },
            ),
            ListTile(
              trailing: CircleAvatar(
                child: Icon(
                  Icons.exit_to_app,
                  size: 20.0,
                ),
              ),
              title: Text("Login"),
              onTap: (){
                Navigator.of(context).push(CupertinoPageRoute(builder: (BuildContext context) {
                  return LoginLogout();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}

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
import 'package:fashioncart/tools/store.dart';

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
        child: Column(
          children: <Widget>[
            Flexible(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: storeItems.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Stack(
                      alignment: FractionalOffset.topLeft,
                      children: <Widget>[
                        Stack(
                          alignment: FractionalOffset.bottomCenter,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      NetworkImage(storeItems[index].itemImage),
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                            Container(
                              color: Colors.black.withAlpha(100),
                              height: 35.0,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      storeItems[index]
                                          .itemName
                                          .substring(0, 8),
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16.0,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      "Rs. ${storeItems[index].itemPrice}",
                                      style: TextStyle(
                                        color: Colors.red[500],
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              height: 30.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                  color: Colors.black.withAlpha(100),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(5.0),
                                      bottomRight: Radius.circular(5.0))),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 18.0,
                                  ),
                                  Text(
                                    "${storeItems[index].itemRating}",
                                    style: TextStyle(color: Colors.orange),
                                  )
                                ],
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.favorite_border),
                              color: Colors.black.withAlpha(100),
                              onPressed: (){

                              },
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
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
                Navigator
                    .of(context)
                    .push(CupertinoPageRoute(builder: (BuildContext context) {
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
              onTap: () {
                Navigator
                    .of(context)
                    .push(CupertinoPageRoute(builder: (BuildContext context) {
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
              onTap: () {
                Navigator
                    .of(context)
                    .push(CupertinoPageRoute(builder: (BuildContext context) {
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
              onTap: () {
                Navigator
                    .of(context)
                    .push(CupertinoPageRoute(builder: (BuildContext context) {
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
              onTap: () {
                Navigator
                    .of(context)
                    .push(CupertinoPageRoute(builder: (BuildContext context) {
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
              onTap: () {
                Navigator
                    .of(context)
                    .push(CupertinoPageRoute(builder: (BuildContext context) {
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

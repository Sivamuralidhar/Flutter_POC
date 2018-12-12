import 'package:flutter/material.dart';
import 'package:dealshour/constants/appconstants.dart';
import 'OrderOptions.dart';
import 'package:badges/badges.dart';

class RestaurantsDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Restaurant Name"),
        backgroundColor: Colorconstants.appred,
        centerTitle: true,
        leading: new IconButton(
          icon: new Icon(Icons.close),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: <Widget>[
          BadgeIconButton(
              itemCount: 2, // required
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ), // required
              badgeColor: Colors.green, // default: Colors.red
              badgeTextColor: Colors.white, // default: Colors.white
              hideZeroCount: true, // default: true
              onPressed: null),
        ],
        // leading: new Container(),
      ),
       body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new RaisedButton(
              textColor: Colors.white,
              child: Text("Demo - Navigate to order options"),
              color: Theme.of(context).accentColor,
              splashColor: Colors.blueGrey,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OrderOptions()),
                );
              }
            ),
          ],
        ),
      ),
    );
    
  }
}

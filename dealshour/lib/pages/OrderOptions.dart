import 'package:flutter/material.dart';
import 'package:dealshour/constants/appconstants.dart';
// import 'package:badge/badge.dart';
import 'package:badges/badges.dart';

class OrderOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Order Options"),
        backgroundColor: Colorconstants.appred,
        centerTitle: true,
        // leading: new Container(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[  
            new RaisedButton(
              textColor: Colors.white,
              padding: const EdgeInsets.all(8.0),
              child: Text(Appconstants.addtocart),
              color: Theme.of(context).accentColor,
              splashColor: Colors.blueGrey,
              onPressed: null,
              // onPressed: () {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) => SignIn()),
              //   );
              // }
            ),
          ],
        ),
      ),
    );
  }
}

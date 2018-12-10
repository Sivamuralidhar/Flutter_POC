import 'package:flutter/material.dart';
import 'package:dealshour/constants/appconstants.dart';
class MyDeals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return new Scaffold(
      appBar: AppBar(
         title: Text(Appconstants.mydeals),
         backgroundColor: Colorconstants.appred,
         centerTitle: true,
      ),
      body: Center(
        child: new Text('My Deals',
        style: new TextStyle(fontSize: 25.0, color: Colors.teal),
      ),
      ),
    );
  }
}
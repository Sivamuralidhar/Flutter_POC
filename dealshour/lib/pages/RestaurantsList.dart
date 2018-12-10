import 'package:flutter/material.dart';
import 'package:dealshour/constants/appconstants.dart';
class RestaurantsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return new Scaffold(
      appBar: AppBar(
         title: Text(Appconstants.dealshour),
         backgroundColor: Colorconstants.appred,
         centerTitle: true,
      ),
      body: Center(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          
        ],
      ),
      ),
    );
  }
}
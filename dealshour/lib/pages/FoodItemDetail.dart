import 'package:flutter/material.dart';
import 'package:dealshour/constants/appconstants.dart';

class FoodItemDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return new Scaffold(
      appBar: AppBar(
         title: Text("Food Item Detail"),
         backgroundColor: Colorconstants.appred,
         centerTitle: true,
         actions: <Widget>[
           new IconButton(
            icon: new Icon(Icons.close,),
            alignment: Alignment.centerLeft,
            onPressed: () => Navigator.of(context).pop(null),
          ),
         ],
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
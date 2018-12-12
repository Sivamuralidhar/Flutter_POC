import 'package:flutter/material.dart';
import 'package:dealshour/constants/appconstants.dart';
import 'package:dealshour/pages/SignIn.dart';
import 'package:dealshour/pages/RestaurantsDetails.dart';
import 'LoginAsMerchant.dart';

void main() {
  runApp(MaterialApp(
    home: new MyAccount(), 
    routes: <String, WidgetBuilder>{
        "/restdetail": (BuildContext context) => new RestaurantsDetails()
    }
  ));
}


class MyAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(Appconstants.accountsettings),
        backgroundColor: Colorconstants.appred,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              Appconstants.deliciousdining,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              overflow: TextOverflow.ellipsis,
            ),
            Text(Appconstants.orderfavorites),
            new RaisedButton(
                textColor: Colors.white,
                child: Text(Appconstants.signintodealshour),
                color: Theme.of(context).accentColor,
                splashColor: Colors.blueGrey,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignIn()),
                    // MaterialPageRoute(builder: (context) => RestaurantsDetails()),
                  );
                  // Navigator.pushNamed(context, '/restdetail');
                }),
            new RaisedButton(
                textColor: Colors.white,
                child: Text(Appconstants.loginasmerchant),
                color: Theme.of(context).accentColor,
                splashColor: Colors.blueGrey,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginAsMerchant()),
                  );
                }),
          ],
        ),
      ),
    );
  }
}

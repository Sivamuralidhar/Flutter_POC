import 'package:flutter/material.dart';
import 'package:dealshour/constants/appconstants.dart';

// class LoginAsMerchant extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {

//     return new Scaffold(

//       appBar: AppBar(
//          title: Text(Appconstants.login),
//          backgroundColor: Colorconstants.appred,
//          centerTitle: true,
//       ),
//       body: MyCustomForm()
//     );
//   }
// }

// class MyCustomForm extends StatefulWidget {
//   @override
//   MyCustomFormState createState() {
//     return MyCustomFormState();
//   }
// }

// class MyCustomFormState extends State<MyCustomForm> {
//   // Create a global key that will uniquely identify the Form widget and allow
//   // us to validate the form
//   //
//   // Note: This is a GlobalKey<FormState>, not a GlobalKey<MyCustomFormState>!
//   final _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     // Build a Form widget using the _formKey we created above
//     return Form(
//       key: _formKey,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           TextFormField(
//      autofocus: true,
//      decoration: InputDecoration(hintText: Appconstants.enteremailid),
//             validator: (value) {
//               if (value.isEmpty) {
//                 return ErrorMessages.enteremailid;
//               }
//             },
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 16.0),
//             child:Center(
//               child:  new RaisedButton(

//               onPressed: () {
//                 // Validate will return true if the form is valid, or false if
//                 // the form is invalid.
//                 if (_formKey.currentState.validate()) {
//                   // If the form is valid, we want to show a Snackbar
//                   Scaffold.of(context)
//                       .showSnackBar(SnackBar(content: Text(Appconstants.pleasewait)));
//                 //        Navigator.push(context,
//                 //   MaterialPageRoute(builder: (context) => VerifyNumberWithOTP()),
//                 // );
//                 }
//               },
//               child: Text('Submit'),
//             ),
//             )

//           ),
//         ],
//       ),
//     );
//   }
// }

class LoginAsMerchant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(Appconstants.login),
        backgroundColor: Colorconstants.appred,
        centerTitle: true,
        leading: new IconButton(
          icon: new Icon(Icons.close),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: new LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _LoginPageState();
}

// Used for controlling whether the user is loggin or creating an account
enum FormType { login, register }

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailFilter = new TextEditingController();
  final TextEditingController _passwordFilter = new TextEditingController();
  String _email = "";
  String _password = "";
  FormType _form = FormType
      .login; // our default setting is to login, and we should switch to creating an account when the user chooses to

  _LoginPageState() {
    _emailFilter.addListener(_emailListen);
    _passwordFilter.addListener(_passwordListen);
  }

  void _emailListen() {
    if (_emailFilter.text.isEmpty) {
      _email = "";
    } else {
      _email = _emailFilter.text;
    }
  }

  void _passwordListen() {
    if (_passwordFilter.text.isEmpty) {
      _password = "";
    } else {
      _password = _passwordFilter.text;
    }
  }

  // Swap in between our two forms, registering and logging in
  void _formChange() async {
    setState(() {
      if (_form == FormType.register) {
        _form = FormType.login;
      } else {
        _form = FormType.register;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // appBar: _buildBar(context),
      body: new Container(
        padding: EdgeInsets.all(16.0),
        child: new Column(
          children: <Widget>[
            _buildTextFields(),
            _buildButtons(),
          ],
        ),
      ),
    );
  }

  Widget _buildBar(BuildContext context) {
    return new AppBar(
      title: Text(Appconstants.login),
      backgroundColor: Colorconstants.appred,
      centerTitle: true,
    );
  }

  Widget _buildTextFields() {
    return new Container(
      padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
      alignment: Alignment.center,
      child: new Column(
        children: <Widget>[
          new Container(
            child: new TextField(
              controller: _emailFilter,
              decoration: new InputDecoration(labelText: 'Email'),
            ),
          ),
          new Container(
            child: new TextField(
              controller: _passwordFilter,
              decoration: new InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildButtons() {
    if (_form == FormType.login) {
      return new Container(
        child: new Column(
          children: <Widget>[
            new Container(
              padding: EdgeInsets.all(30),
              child: new RaisedButton(
                child: new Text('Login to Deals Hour'),
                onPressed: _loginPressed,
              ),
              // new FlatButton(
              //   child: new Text('Dont have an account? Tap here to register.'),
              //   onPressed: _formChange,
              // ),
              // new FlatButton(
              //   child: new Text('Forgot Password?'),
              //   onPressed: _passwordReset,
              // )
            )
          ],
        ),
      );
    } else {
      return new Container(
        child: new Column(
          children: <Widget>[
            new RaisedButton(
              child: new Text('Create an Account'),
              onPressed: _createAccountPressed,
            ),
            new FlatButton(
              child: new Text('Have an account? Click here to login.'),
              onPressed: _formChange,
            )
          ],
        ),
      );
    }
  }

  // These functions can self contain any user auth logic required, they all have access to _email and _password

  void _loginPressed() {
    print('The user wants to login with $_email and $_password');
  }

  void _createAccountPressed() {
    print('The user wants to create an accoutn with $_email and $_password');
  }

  void _passwordReset() {
    print("The user wants a password reset request sent to $_email");
  }
}

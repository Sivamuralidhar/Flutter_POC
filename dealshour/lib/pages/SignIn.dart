import 'package:flutter/material.dart';
import 'package:dealshour/constants/appconstants.dart';
import 'VerifyNumberWithOTP.dart';
import 'package:country_code_picker/country_code_picker.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text(Appconstants.signin),
          backgroundColor: Colorconstants.appred,
          centerTitle: true,
        ),
        body: MyCustomForm());
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that will uniquely identify the Form widget and allow
  // us to validate the form
  //
  // Note: This is a GlobalKey<FormState>, not a GlobalKey<MyCustomFormState>!
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey we created above
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new CountryCodePicker(
            onChanged: print,
            // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
            initialSelection: 'US',
            favorite: ['+1', 'US'],
          ),
          TextFormField(
            keyboardType: TextInputType.phone,
            autofocus: true,
            decoration:
                InputDecoration(hintText: Appconstants.enterphonenumber),
            validator: (value) {
              if (value.isEmpty) {
                return ErrorMessages.enterphonenumber;
              }
            },
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Center(
                child: new RaisedButton(
                  onPressed: () {
                    // Validate will return true if the form is valid, or false if
                    // the form is invalid.
                    if (_formKey.currentState.validate()) {
                      // If the form is valid, we want to show a Snackbar
                      Scaffold.of(context).showSnackBar(
                          SnackBar(content: Text(Appconstants.pleasewait)));
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VerifyNumberWithOTP()),
                      );
                    }
                  },
                  child: Text('Submit'),
                ),
              )),
        ],
      ),
    );
  }
}

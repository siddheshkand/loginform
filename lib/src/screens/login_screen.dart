import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: 20.0, top: 20.0),
          margin: EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: Column(
              children: <Widget>[
                emailField(),
                Container(
                  margin: EdgeInsets.only(bottom: 20.0),
                ),
                passwordField(),
                Container(
                  margin: EdgeInsets.only(bottom: 20.0),
                ),
                submitButton(),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget emailField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Email Address',
        hintText: 'you@example.com',
      ),
      keyboardType: TextInputType.emailAddress,
      validator: (String value) {
        if (!value.contains('@')) {
          return 'Please Enter a valid Email';
        }
      },
      onSaved: (String value) {
        email = value;
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Password',
      ),
      obscureText: true,
      validator: (String value) {
        if (value.length < 4) {
          return 'Password must be at least 4 character';
        }
      },
      onSaved: (String value) {
        password = value;
      },
    );
  }

  Widget submitButton() {
    return RaisedButton(
      textColor: Colors.white,
      color: Colors.blue,
      padding: EdgeInsets.only(top: 10.0, bottom: 10.0, right: 5.0, left: 5.0),
      onPressed: () {
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
          print(email);
          print(password);
        }
      },
      child: Text('Submit'),
    );
  }
}

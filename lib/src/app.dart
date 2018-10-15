import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Log Me in',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Log In"),
        ),
        body: LoginScreen(),
      ),
    );
  }
}

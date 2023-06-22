import 'package:flutter/material.dart';

import 'Src/Screens/ForGuest/ForgotPassScreen.dart';
import 'Src/Screens/ForGuest/LoginScreen.dart';
import 'Src/Screens/ForGuest/SignupScreen.dart';
import 'Src/Screens/ForUser/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'login': (context) => LoginScreen(),
        'FrogotPassScreen': (context) => ForgotPassScreen(),
        'SignupScreen': (context) => SignupScreen(),
        'HomeScreen': (context) => HomeScreen(),
      },
      title: 'myApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}

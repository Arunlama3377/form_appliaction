import 'package:flutter/material.dart';
import 'package:learning_flutter_basic/screens/login_screen.dart';
import 'package:learning_flutter_basic/screens/register_screen.dart';

void main() {

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: LoginScreen(),
      home:  Registerscreen(),
    );
  }
}
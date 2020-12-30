import 'package:flutter/material.dart';
import 'package:instagramclone/screens/homescreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram clone',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primaryColor: Colors.black,
        primaryIconTheme: IconThemeData(color: Colors.black),
        primaryTextTheme: TextTheme(headline6: TextStyle(
          color: Colors.black,
          fontFamily: "IstokWeb"
        ))
      ),
      
      home:HomeScreen(),
    );
  }
}


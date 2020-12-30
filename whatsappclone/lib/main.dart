import 'package:flutter/material.dart';
import 'package:whatsappclone/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: new Color(0xff075E54),
        accentColor: Color(0xff25D366)
      ),
      home: Home()
    );
  }
}



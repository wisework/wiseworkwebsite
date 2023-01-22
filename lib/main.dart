import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:wiseintern/OnHover.dart';
import 'package:wiseintern/desktop_body.dart';
import 'package:wiseintern/mobile_body.dart';
import 'responsive_layout.dart';
import 'HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      // theme: ThemeData(primarySwatch: Colors.deepPurple),
    );
  }
}

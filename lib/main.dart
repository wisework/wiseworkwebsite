import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:wiseintern/OnHover.dart';
import 'package:wiseintern/desktop_body.dart';
import 'responsive_layout.dart';
import 'HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home:MyDesktopBody(),
      theme: ThemeData(
        // This is the theme of your application.

        primarySwatch: Colors.blue,
      ),
    );
  }
}

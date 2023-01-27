import 'package:flutter/material.dart';
import 'package:wiseintern/features.dart';
import 'navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FeaturesPage() ,
      
      // theme: ThemeData(primarySwatch: Colors.deepPurple),
    );
  }
}

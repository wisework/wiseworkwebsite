import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:wiseintern/home/homepage.dart';
import 'package:wiseintern/about/aboutpage.dart';
import 'package:wiseintern/customers/customerspage.dart';
import 'package:wiseintern/services/servicespage.dart';
import 'package:wiseintern/products/productspage.dart';
import 'package:wiseintern/features/pdmanagement.dart';
import 'package:wiseintern/contact/contactpage.dart';
import 'package:wiseintern/faq/faqpage.dart';
import 'package:wiseintern/demo/demopage.dart';
import 'package:wiseintern/producttable/producttablepage.dart';
import 'package:wiseintern/features/new.dart';

import 'package:get/get.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

// import 'package:wiseintern/home/features.dart';
// import 'package:wiseintern/home/packagepage.dart';
// import 'navbar.dart';
// import 'package:wiseintern/home/customers.dart';

void main() {
  runApp(const MyApp());
}
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   final jsonString = await rootBundle.loadString('assets/test.json');
//   final List<dynamic> data = jsonDecode(jsonString);
//   final List<PageData> pages =
//       data.map((json) => PageData.fromJson(json)).toList();

//   runApp(MyApp());
// }

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return HomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'story',
          builder: (BuildContext context, GoRouterState state) {
            return AboutPage();
          },
        ),
        GoRoute(
          path: 'customers',
          builder: (BuildContext context, GoRouterState state) {
            return CustomerPage();
          },
        ),
        GoRoute(
          path: 'services',
          builder: (BuildContext context, GoRouterState state) {
            return ServicesPage();
          },
        ),
        GoRoute(
          path: 'product',
          builder: (BuildContext context, GoRouterState state) {
            return ProductPage();
          },
        ),
        GoRoute(
          path: 'pdmanagement',
          builder: (BuildContext context, GoRouterState state) {
            return Pdmanagement();
          },
        ),
        GoRoute(
          path: 'contact',
          builder: (BuildContext context, GoRouterState state) {
            return ContactPage();
          },
        ),
        GoRoute(
          path: 'faq',
          builder: (BuildContext context, GoRouterState state) {
            return FaqPage();
          },
        ),
        GoRoute(
          path: 'demo',
          builder: (BuildContext context, GoRouterState state) {
            return DemoPage();
          },
        ),
        GoRoute(
          path: 'test',
          builder: (BuildContext context, GoRouterState state) {
            return TestPage();
          },
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }
}

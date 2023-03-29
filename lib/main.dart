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
          path: 'home',
          builder: (BuildContext context, GoRouterState state) {
            return HomePage();
          },
        ),
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
          path: 'detail/1',
          builder: (BuildContext context, GoRouterState state) {
            return MyDetails(
                "PD Management",
                "จัดการบันทึกรายการข้อมูลส่วนบุคคลและการไหลของข้อมูล (Data Flow)",
                "features/folder.png",
                "1");
          },
        ),
        GoRoute(
          path: 'detail/2',
          builder: (BuildContext context, GoRouterState state) {
            return MyDetails(
                "DPIA & Risk Management",
                "การบริหารความเสี่ยงและผลกระทบจากข้อมูลส่วนบุคคล",
                "features/risk.png",
                "2");
          },
        ),
        GoRoute(
          path: 'detail/3',
          builder: (BuildContext context, GoRouterState state) {
            return MyDetails(
                 "Cookie Consent",
        "การขอความยินยอมจากเจ้าของข้อมูลและการบริหารจัดการคุกกี้",
        "features/cookie.png",
        "3");
          },
        ),
        GoRoute(
          path: 'detail/4',
          builder: (BuildContext context, GoRouterState state) {
            return MyDetails(
                "Consent Management", "การบริหารจัดการให้ความยินยอม",
        "features/consent.png",
        "4");
          },
        ),
        GoRoute(
          path: 'detail/5',
          builder: (BuildContext context, GoRouterState state) {
            return MyDetails(
                "Data Subject Right Management",
        "บริหารการขอใช้สิทธิ์จากเจ้าของข้อมูล",
        "features/data.png",
        "5");
          },
        ),
        GoRoute(
          path: 'detail/6',
          builder: (BuildContext context, GoRouterState state) {
            return MyDetails(
                "Data Breach", "บริหารกรณีเกิดข้อมูลรั่วไหล",
        "features/breach.png",
        "6");
          },
        ),
        GoRoute(
          path: 'detail/7',
          builder: (BuildContext context, GoRouterState state) {
            return MyDetails(
                "Audit&Gap Management", "บริหารงานตรจสอบและการทำ GAP Analysis",
        "features/audit.png",
        "7");
          },
        ),
        GoRoute(
          path: 'detail/8',
          builder: (BuildContext context, GoRouterState state) {
            return MyDetails(
                "Policy&Notices Management",
        "บริหารการสื่อสารนโยบายและประกาศความเป็นส่วนตัว",
        "features/policy.png",
        "8");
          },
        ),
        GoRoute(
          path: 'detail/9',
          builder: (BuildContext context, GoRouterState state) {
            return MyDetails(
                "Data Discover", "ค้นหาข้อมูลส่วนตัวในระบบสารสนเทศ",
        "features/discovery.png",
        "9");
          },
        ),
        GoRoute(
          path: 'detail/10',
          builder: (BuildContext context, GoRouterState state) {
            return MyDetails(
                "Executive Support System",
        "บริหารงานและจัดการรายงาน สำหรับผู้บริหาร",
        "features/executive.png",
        "10");
          },
        ),
        GoRoute(
          path: 'detail/11',
          builder: (BuildContext context, GoRouterState state) {
            return MyDetails(
                "Legitimate Interest Assessment",
        "การประเมินการนำฐานกฏหมายมาใช้", "features/legi.png",
        "11");
          },
        ),
        GoRoute(
          path: 'detail/12',
          builder: (BuildContext context, GoRouterState state) {
            return MyDetails(
                "System Setting Management",
        "ส่วนการตั้งค่าส่วนส่งเสริมที่ถูกพัฒนาขึ้นมาเพื่อให้ผู้ดูแลระบบจัดการกับข้อมูลต่างๆ",
        "features/system.png",
        "12");
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

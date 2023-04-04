import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:wiseintern/home/homepage.dart';
import 'package:wiseintern/about/aboutpage.dart';
import 'package:wiseintern/customers/customerspage.dart';
import 'package:wiseintern/model/features.dart';
import 'package:wiseintern/services/servicespage.dart';
import 'package:wiseintern/products/productspage.dart';
import 'package:wiseintern/features/pdmanagement.dart';
import 'package:wiseintern/contact/contactpage.dart';
import 'package:wiseintern/faq/faqpage.dart';
import 'package:wiseintern/demo/demopage.dart';
import 'package:wiseintern/table/producttablepage.dart';

import 'package:wiseintern/features/templateFeatures.dart';
import 'package:wiseintern/products/producttemplate.dart';

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
          path: 'package',
          builder: (BuildContext context, GoRouterState state) {
            return ProductTablePage();
          },
        ),
        GoRoute(
          path: 'features/1',
          builder: (BuildContext context, GoRouterState state) {
            return MyDetails(
                "PD Management",
                "จัดการบันทึกรายการข้อมูลส่วนบุคคลและการไหลของข้อมูล (Data Flow)",
                "features/pdcard.png",
                "รองรับการใช้สิทธิของเจ้าของข้อมูลส่วนบุคคลตามกฎหมายมาตรา ได้แก่ มาตรา 24 , มาตรา 26, มาตรา 30, มาตรา 31, มาตรา 32, มาตรา 36(1), มาตรา 39");
          },
        ),
        GoRoute(
          path: 'features/2',
          builder: (BuildContext context, GoRouterState state) {
            return MyDetails(
                "DPIA & Risk Management",
                "การบริหารความเสี่ยงและผลกระทบจากข้อมูลส่วนบุคคล",
                "features/risk.png",
                "2");
          },
        ),
        GoRoute(
          path: 'features/3',
          builder: (BuildContext context, GoRouterState state) {
            return MyDetails(
                "Cookie Consent",
                "การขอความยินยอมจากเจ้าของข้อมูลและการบริหารจัดการคุกกี้",
                "features/cookie.png",
                "3");
          },
        ),
        GoRoute(
          path: 'features/4',
          builder: (BuildContext context, GoRouterState state) {
            return MyDetails("Consent Management",
                "การบริหารจัดการให้ความยินยอม", "features/consent.png", "4");
          },
        ),
        GoRoute(
          path: 'features/5',
          builder: (BuildContext context, GoRouterState state) {
            return MyDetails(
                "Data Subject Right Management",
                "บริหารการขอใช้สิทธิ์จากเจ้าของข้อมูล",
                "features/data.png",
                "5");
          },
        ),
        GoRoute(
          path: 'features/6',
          builder: (BuildContext context, GoRouterState state) {
            return MyDetails("Data Breach", "บริหารกรณีเกิดข้อมูลรั่วไหล",
                "features/breach.png", "6");
          },
        ),
        GoRoute(
          path: 'features/7',
          builder: (BuildContext context, GoRouterState state) {
            return MyDetails(
                "Audit&Gap Management",
                "บริหารงานตรจสอบและการทำ GAP Analysis",
                "features/audit.png",
                "7");
          },
        ),
        GoRoute(
          path: 'features/8',
          builder: (BuildContext context, GoRouterState state) {
            return MyDetails(
                "Policy&Notices Management",
                "บริหารการสื่อสารนโยบายและประกาศความเป็นส่วนตัว",
                "features/policy.png",
                "8");
          },
        ),
        GoRoute(
          path: 'features/9',
          builder: (BuildContext context, GoRouterState state) {
            return MyDetails(
                "Data Discover",
                "ค้นหาข้อมูลส่วนตัวในระบบสารสนเทศ",
                "features/discovery.png",
                "9");
          },
        ),
        GoRoute(
          path: 'features/10',
          builder: (BuildContext context, GoRouterState state) {
            return MyDetails(
                "Executive Support System",
                "บริหารงานและจัดการรายงาน สำหรับผู้บริหาร",
                "features/executive.png",
                "10");
          },
        ),
        GoRoute(
          path: 'features/11',
          builder: (BuildContext context, GoRouterState state) {
            return MyDetails("Legitimate Interest Assessment",
                "การประเมินการนำฐานกฏหมายมาใช้", "features/legi.png", "11");
          },
        ),
        GoRoute(
          path: 'features/12',
          builder: (BuildContext context, GoRouterState state) {
            return MyDetails(
                "System Setting Management",
                "ส่วนการตั้งค่าส่วนส่งเสริมที่ถูกพัฒนาขึ้นมาเพื่อให้ผู้ดูแลระบบจัดการกับข้อมูลต่างๆ",
                "features/system.png",
                "12");
          },
        ),
        GoRoute(
          path: 'package/1',
          builder: (BuildContext context, GoRouterState state) {
            return MyPackages("Express", "SaaS", "pakages/could.png",
                "ระบบบริหารจัดการข้อมูลส่วนบุคคล PDPA เหมาะสำหรับองค์กรที่มี การเก็บรวบรวมข้อมูลส่วนบุคคล และข้อมูลส่วนอ่อนไหว จำนวนมาก ฟังก์ชันการใช้งานตรงตาม วัตถุประสงค์ PDPA ตอบโจทย์ธุรกิจ ขนาดกลางและขนาดย่อม");
          },
        ),
        GoRoute(
          path: 'package/2',
          builder: (BuildContext context, GoRouterState state) {
            return MyPackages(
                "Standard",
                "Subscription License",
                "pakages/clouds.png",
                "ระบบบริหารจัดการข้อมูลส่วนบุคคล PDPA เหมาะสำหรับองค์กรขนาดใหญ่ ธุรกิจเฉพาะ ต้องการปรับเปลี่ยนให้เข้ากับรูปแบบการทำงาน ขององค์กร ครอบคลุมทุกฟังก์ชันการใช้งาน 11 Modules พร้อมรองรับการเชื่อมต่อ API");
          },
        ),
        GoRoute(
          path: 'package/3',
          builder: (BuildContext context, GoRouterState state) {
            return MyPackages(
                "Enterprise",
                "Perpetual License",
                "pakages/rainbow_cloud.png",
                "ระบบบริหารจัดการข้อมูลส่วนบุคคล PDPA เหมาะสำหรับองค์กรขนาดใหญ่ มีบริษัทในเครือ ควบคุมระบบทั้งหมดได้จากศูนย์กลาง ครอบคลุมทุกฟังก์ชันการใช้งานเต็มรูปแบบ 11 Modules และไม่มีข้อจำกัดในการเชื่อมต่อกับระบบอื่น");
          },
        )
      ],
    ),
  ],
);

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // GoRouter _path = GoRouter(routes: [
  //   GoRoute(
  //       path: '/',
  //       builder: (BuildContext context, GoRouterState state) {
  //         return HomePage();
  //       })
  // ]);

  // Future<String> loadjsonData() async {
  //   return await rootBundle.loadString("assets/featuresData.json");
  // }

  // Future<void> parsejsonData() async {
  //   String json = await loadjsonData();
  //   List<dynamic> data = jsonDecode(json);
  //   // print(1);

  //   List<FeatureModel> features = [];
  //   for (dynamic item in data) {
  //     Map<String, dynamic> map = item;
  //     features.add(FeatureModel.fromJson(map));
  //   }
  //   print(features);
  //   setState(() {
  //     _path = GoRouter(routes: <RouteBase>[
  //       ...features.map(
  //         (Model) => GoRoute(
  //           path: Model.page,
  //           builder: (BuildContext context, GoRouterState state) {
  //             return buildRoutePage(Model);
  //           },
  //         ),
  //       )
  //     ]);
  //   });
  // }

  // Widget buildRoutePage(FeatureModel model) {
  //   switch (model.page) {
  //     case "home":
  //       return HomePage();
  //     case "story":
  //       return AboutPage();
  //     case "customers":
  //       return CustomerPage();
  //     case "services":
  //       return ServicesPage();
  //     case "product":
  //       return ProductPage();
  //     case "contact":
  //       return ContactPage();
  //     case "faq":
  //       return FaqPage();
  //     case "demo":
  //       return DemoPage();
  //     case "features/1":
  //       return MyDetails(
  //         model.title,
  //         model.description,
  //         model.imageUrl,
  //         model.features,
  //       );
  //     case "features/2":
  //       return MyDetails(
  //         model.title,
  //         model.description,
  //         model.imageUrl,
  //         model.features,
  //       );
  //     case "features/3":
  //       return MyDetails(
  //         model.title,
  //         model.description,
  //         model.imageUrl,
  //         model.features,
  //       );
  //     case "features/4":
  //       return MyDetails(
  //         model.title,
  //         model.description,
  //         model.imageUrl,
  //         model.features,
  //       );
  //     case "features/5":
  //       return MyDetails(
  //         model.title,
  //         model.description,
  //         model.imageUrl,
  //         model.features,
  //       );
  //     case "features/6":
  //       return MyDetails(
  //         model.title,
  //         model.description,
  //         model.imageUrl,
  //         model.features,
  //       );
  //     case "features/7":
  //       return MyDetails(
  //         model.title,
  //         model.description,
  //         model.imageUrl,
  //         model.features,
  //       );
  //     case "features/8":
  //       return MyDetails(
  //         model.title,
  //         model.description,
  //         model.imageUrl,
  //         model.features,
  //       );
  //     case "features/9":
  //       return MyDetails(
  //         model.title,
  //         model.description,
  //         model.imageUrl,
  //         model.features,
  //       );
  //     case "features/10":
  //       return MyDetails(
  //         model.title,
  //         model.description,
  //         model.imageUrl,
  //         model.features,
  //       );
  //     case "features/11":
  //       return MyDetails(
  //         model.title,
  //         model.description,
  //         model.imageUrl,
  //         model.features,
  //       );
  //     case "features/12":
  //       return MyDetails(
  //         model.title,
  //         model.description,
  //         model.imageUrl,
  //         model.features,
  //       );

  //     default:
  //       return HomePage();
  //   }
  // }

  // @override
  // void initState() async {
  //   super.initState();
  //   parsejsonData();
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }
}

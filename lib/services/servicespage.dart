import 'package:flutter/material.dart';
import 'package:wiseintern/navbar.dart';
import 'package:go_router/go_router.dart';

import 'package:wiseintern/responsive.dart';
// import 'package:wiseintern/home/customers.dart';
// import 'package:wiseintern/home/story.dart';
import 'package:wiseintern/menu_drawer.dart';
import 'package:wiseintern/home/footer.dart';
import 'package:wiseintern/services/banner.dart';
import 'package:wiseintern/services/ourservices.dart';
import 'package:wiseintern/services/compare.dart';
import 'package:wiseintern/home/features.dart';
import 'package:wiseintern/home/packagepage.dart';

class ServicesPage extends StatefulWidget {
  @override
  _ServicesPageState createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  // int _currentIndex = 0;

  // void onTabTapped(int index) {
  //   setState(() {
  //     _currentIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: Responsive.isDesktop(context) ? 80 : 60,
          automaticallyImplyLeading: !Responsive.isDesktop(context),
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color.fromARGB(255, 52, 144, 206),
          elevation: 0,
          centerTitle: true,
          title: !Responsive.isDesktop(context)
              ? Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 60,
                        width: 100,
                        child: GestureDetector(
                          onTap: () => context.go('/'),
                          child: Image.asset(
                            'assets/logo.png',
                          ),
                        ),
                      ),
                    ],
                  ))
              : NavBar()),
      drawer: MenuDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BannerPage(),
            OurservicesPage(),
            FeaturesPage(),
            PackagesPage(),
            Compare(),
            Footer()
          ],
        ),
      ),
    );
  }
}

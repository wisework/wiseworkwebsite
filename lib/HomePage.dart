import 'package:flutter/material.dart';
import 'navbar.dart';
import 'features.dart';
import 'packagepage.dart';
import 'responsive.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:google_fonts/google_fonts.dart';
import 'customers.dart';
import 'story.dart';
import 'menu_drawer.dart';
import 'FAQ.dart';
import 'footer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ScrollController _scrollController;
  double _scrollPosition = 0;
  double _opacity = 0;

  int _currentIndex = 0;
  final List<Widget> _children = [
    // Feature2(),
    PackagesPage(),
    FeaturesPage(),
    CustomerPage(),
    StoryPage()
    // other pages
  ];
  

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Responsive.isDesktop(context)? 130:60,
          automaticallyImplyLeading: !Responsive.isDesktop(context) ,
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color.fromARGB(255, 52, 144, 206),
          elevation: 0,
          centerTitle: true,
          title:!Responsive.isDesktop(context) 
              ? Padding(
                  padding: const EdgeInsets.all(20),
                  child: SizedBox(
                    height: 60,
                    width: 100,
                    child: Image.asset(
                      'logo.png',
                    ),
                  ),
                )
               
              : NavBar()),
      drawer: MenuDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // StoryPage(),
            // FeaturesPage(),
            // PackagesPage(),
            // CustomerPage(),
            FAQ(),
            // Footer()
          ],
        ),
      ),
    );
  }
}

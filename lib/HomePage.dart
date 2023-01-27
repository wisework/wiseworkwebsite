import 'package:flutter/material.dart';
import 'navbar.dart';
import 'features.dart';
import 'packagepage.dart';
import 'responsive.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:google_fonts/google_fonts.dart';


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
    FeaturePage()
    // other pages
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;

    return Scaffold(
      appBar: PreferredSize(
              preferredSize: Size(screenSize.width, 1000),
              child: NavBar(_opacity),
            ),
      body: Stack(
        children: <Widget>[
          FeaturePage(),
          // NavigationBar(),
          // PackagesPage(),
        ],
      ),
      // bottomNavigationBar: NavBar(),
      // bottomNavigationBar: BottomNavigationBar(
      //   onTap: onTabTapped,
      //   currentIndex: _currentIndex,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: new Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: new Icon(Icons.search),
      //       label: 'search',
      //     ),
      //   ],
      // ),
    );
  }
}

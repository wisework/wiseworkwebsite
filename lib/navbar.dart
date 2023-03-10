import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatefulWidget {
  // final double opacity;

  NavBar();

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class FeatureModel {
  final String title;
  final String? routePath;
  FeatureModel(this.title, this.routePath);
}

class _NavigationBarState extends State<NavBar> {
  final List<String> listAbout = <String>[
    'About Us',
    'Our Story',
    'Our Rew',
    'Our Cus',
  ];

  String? _selectedItem;
  bool _selected = false;

  final List<String> listServices = <String>[
    'Our Services',
    'PDPA ',
    'Governance ',
    'Request Demo',
  ];
  String? AboutValue;
  String? ServicesValue;

  List<FeatureModel> features = [
    FeatureModel("About Us", "/about/aboutpage.dart"),
  ];

  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    // var screenSize = MediaQuery.of(context).size;

    return Container(
      color: Color.fromARGB(255, 52, 144, 206),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Expanded(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 9, bottom: 13, left: 91),
              child: SizedBox(
                height: 45,
                width: 120,
                child: Image.asset(
                  'logo.png',
                ),
              ),
            ),
            SizedBox(
              width: 281,
            ),
            SizedBox(
              height: 18,
              width: 62,
              child: TextButton(
                child: Text(
                  "Home",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                onPressed: () => context.go('/'),
              ),
            ),
            
            DropdownButtonHideUnderline(
              child: DropdownButton2(
                hint: Transform.translate(
                  offset: Offset(0, 1),
                  child: Text(
                    'About Us',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
                icon: Transform.translate(
                  offset: Offset(0, 0),
                  child: Icon(
                    Icons.expand_more_outlined,
                    color: Colors.white,
                  ),
                ),
                value: AboutValue,
                
                items: [
                  DropdownMenuItem(
                      value: 'our story',
                      onTap:  () => context.go('/story'),
                      child: Text(
                        'Our Story',
                        style: TextStyle(
                          fontSize: 16,
                          color: _selected
                              ? Colors.white
                              : Color.fromARGB(255, 52, 144, 206),
                        ),
                      )),
                  DropdownMenuItem(
                      value: 'our rewards',
                      onTap: () => context.go('/story'),
                      child: Text(
                        'Our Rewards',
                        style: TextStyle(
                          fontSize: 16,
                          color: _selected
                              ? Colors.white
                              : Color.fromARGB(255, 52, 144, 206),
                        ),
                      )),
                  DropdownMenuItem(
                      value: 'customer',
                      onTap: () => context.go('/customers'),
                      child: Text(
                        'Our Customers',
                        style: TextStyle(
                          fontSize: 16,
                          color: _selected
                              ? Colors.white
                              : Color.fromARGB(255, 52, 144, 206),
                        ),
                      )),
                ],
                onChanged: (value) {
                  setState(() {
                    _selectedItem = value.toString();
                    AboutValue = value as String;
                  });
                },
              ),
            ),
            
            
            DropdownButtonHideUnderline(
              child: DropdownButton2(
                hint: Text(
                  'Our Services',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                icon: Transform.translate(
                  offset: Offset(0, 0),
                  child: Icon(
                    Icons.expand_more_outlined,
                    color: Colors.white,
                  ),
                ),
                items: [
                  DropdownMenuItem(
                      value: 'pdpa',
                      onTap: () => context.go('/services'),
                      child: Text(
                        'PDPA Management\nPlatform',
                        style: TextStyle(
                          fontSize: 16,
                          color: _selected
                              ? Colors.white
                              : Color.fromARGB(255, 52, 144, 206),
                        ),
                      )),
                  DropdownMenuItem(
                      value: 'governance',
                      onTap: () => context.go('/services'),
                      child: Text(
                        'Governance\nAssurance Suit',
                        style: TextStyle(
                          fontSize: 16,
                          color: _selected
                              ? Colors.white
                              : Color.fromARGB(255, 52, 144, 206),
                        ),
                      )),
                  DropdownMenuItem(
                      value: 'request',
                      onTap: () => context.go('/demo'),
                      child: Text(
                        'Request Demo',
                        style: TextStyle(
                          fontSize: 16,
                          color: _selected
                              ? Colors.white
                              : Color.fromARGB(255, 52, 144, 206),
                        ),
                      )),
                ],
                value: ServicesValue,
                onChanged: (value) {
                  setState(() {
                    _selectedItem = value.toString();
                    ServicesValue = value as String;
                  });
                },
                // dropdownDecoration: BoxDecoration(
                //   color: Colors.white,
                //   borderRadius: BorderRadius.circular(5)
                // ),
                // buttonHeight: 18,
                // buttonWidth: 170,
                // itemHeight: 50,
              ),
            ),
            
            TextButton(
              child: Text(
                "Blogs",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              onPressed: () {},
            ),
            TextButton(
              child: Text(
                "Contact Us",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              onPressed: () => context.go('/contact'),
            ),
            SizedBox(
              width: 42,
            ),
            SizedBox(
              width: 195,
              height: 50,
              child: ElevatedButton(
                onPressed: () => context.go('/demo'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 232, 242, 254),
                  side: BorderSide(width: 3, color: Colors.blue),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                ),
                child: Text(
                  'ทดลองใช้ฟรี',
                  style: GoogleFonts.ibmPlexSansThai(
                      color: Color.fromARGB(255, 57, 128, 237),
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}

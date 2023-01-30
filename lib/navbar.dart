import 'package:flutter/material.dart';
import 'features.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatefulWidget {
  // final double opacity;

  NavBar();

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<String> listHome = <String>['Home', 'h1', 'h2', 'h3', 'h4'];
  final List<String> listAbout = <String>[
    'About Us',
    'ab1',
    'ab2',
    'ab3',
    'ab4'
  ];
  final List<String> listServices = <String>[
    'Our Services',
    'sv1',
    'sv2',
    'sv3',
    'sv4'
  ];
  final List<String> listBlogs = <String>['Blogs', 'b1', 'b2', 'b3', 'b4'];
  final List<String> listContact = <String>[
    'Contacts',
    'ct1',
    'ct2',
    'ct3',
    'ct4'
  ];

  String? HomeValue;
  String? AboutValue;
  String? ServicesValue;
  String? BlogsValue;
  String? ContactValue;

  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      color: Color.fromARGB(255, 52, 144, 206),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Expanded(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: screenSize.width / 4,
            ),
            SizedBox(
              height: 60,
              width: 100,
              child: Image.asset(
                'logo.png',
              ),
            ),
            SizedBox(
              width: screenSize.width / 15,
            ),
            DropdownButtonHideUnderline(
              child: DropdownButton2(
                hint: Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
                icon: Transform.translate(
                  offset: Offset(-10, -2),
                  child: Icon(
                    Icons.expand_more_outlined,
                    color: Colors.white,
                  ),
                ),
                items: listHome
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                                fontSize: 14, color: Colors.white),
                          ),
                        ))
                    .toList(),
                value: HomeValue,
                onChanged: (value) {
                  setState(() {
                    HomeValue = value as String;
                  });
                },
                dropdownDecoration: BoxDecoration(
                    color: Color.fromARGB(255, 171, 204, 227),
                    borderRadius: BorderRadius.circular(5)),
                buttonHeight: 40,
                buttonWidth: 70,
                itemHeight: 40,
              ),
            ),
            DropdownButtonHideUnderline(
              child: DropdownButton2(
                hint: Text(
                  'About Us',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
                icon: Transform.translate(
                  offset: Offset(-18, -2),
                  child: Icon(
                    Icons.expand_more_outlined,
                    color: Colors.white,
                  ),
                ),
                items: listAbout
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                                fontSize: 14, color: Colors.white),
                          ),
                        ))
                    .toList(),
                value: AboutValue,
                onChanged: (value) {
                  setState(() {
                    AboutValue = value as String;
                  });
                },
                dropdownDecoration: BoxDecoration(
                    color: Color.fromARGB(255, 171, 204, 227),
                    borderRadius: BorderRadius.circular(5)),
                buttonHeight: 40,
                buttonWidth: 100,
                itemHeight: 40,
              ),
            ),
            DropdownButtonHideUnderline(
              child: DropdownButton2(
                hint: Text(
                  'Our Services',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
                icon: Transform.translate(
                  offset: Offset(-10, -2),
                  child: Icon(
                    Icons.expand_more_outlined,
                    color: Colors.white,
                  ),
                ),
                items: listServices
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                                fontSize: 14, color: Colors.white),
                          ),
                        ))
                    .toList(),
                value: ServicesValue,
                onChanged: (value) {
                  setState(() {
                    ServicesValue = value as String;
                  });
                },
                dropdownDecoration: BoxDecoration(
                    color: Color.fromARGB(255, 171, 204, 227),
                    borderRadius: BorderRadius.circular(5)),
                buttonHeight: 40,
                buttonWidth: 110,
                itemHeight: 40,
              ),
            ),
            DropdownButtonHideUnderline(
              child: DropdownButton2(
                hint: Text(
                  'Blogs',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
                icon: Transform.translate(
                  offset: Offset(-14, -2),
                  child: Icon(
                    Icons.expand_more_outlined,
                    color: Colors.white,
                  ),
                ),
                items: listBlogs
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                                fontSize: 14, color: Colors.white),
                          ),
                        ))
                    .toList(),
                value: BlogsValue,
                onChanged: (value) {
                  setState(() {
                    BlogsValue = value as String;
                  });
                },
                dropdownDecoration: BoxDecoration(
                    color: Color.fromARGB(255, 171, 204, 227),
                    borderRadius: BorderRadius.circular(5)),
                buttonHeight: 40,
                buttonWidth: 70,
                itemHeight: 40,
              ),
            ),
            DropdownButtonHideUnderline(
              child: DropdownButton2(
                hint: Text(
                  'Contact Us',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
                icon: Transform.translate(
                  offset: Offset(-10, -2),
                  child: Icon(
                    Icons.expand_more_outlined,
                    color: Colors.white,
                  ),
                ),
                items: listContact
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                                fontSize: 14, color: Colors.white),
                          ),
                        ))
                    .toList(),
                value: ContactValue,
                onChanged: (value) {
                  setState(() {
                    ContactValue = value as String;
                  });
                },
                dropdownDecoration: BoxDecoration(
                    color: Color.fromARGB(255, 171, 204, 227),
                    borderRadius: BorderRadius.circular(5)),
                buttonHeight: 40,
                buttonWidth: 100,
                itemHeight: 40,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextButton(
                onPressed: () {
                  // Perform some action
                },
                child: Text(
                  'Search',
                  style: TextStyle(color: Colors.blue),
                ),
                // Changes the background color
              ),
            ),
          ],
        )),
      ),
    );
  }
}

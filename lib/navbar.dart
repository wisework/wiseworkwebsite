import 'package:flutter/material.dart';
import 'features.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatefulWidget {
  final double opacity;

  NavBar(this.opacity);

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

  final List<String> listHome = <String>['h1', 'h2', 'h3', 'h4'];
  final List<String> listAbout = <String>['ab1', 'ab2', 'ab3', 'ab4'];
  final List<String> listServices = <String>['sv1', 'sv2', 'sv3', 'sv4'];
  final List<String> listBlogs = <String>['b1', 'b2', 'b3', 'b4'];
  final List<String> listContact = <String>['ct1', 'ct2', 'ct3', 'ct4'];

  String? HomeValue;
  String? AboutValue;
  String? ServicesValue;
  String? BlogsValue;
  String? ContactValue;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return PreferredSize(
      preferredSize: Size(screenSize.width, 60),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Container(
            color: Colors.red,
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                
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
                      offset: Offset(-14, 0),
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
                                  fontSize: 14,
                                ),
                              ),
                            ))
                        .toList(),
                    value: HomeValue,
                    onChanged: (value) {
                      setState(() {
                        HomeValue = value as String;
                      });
                    },
                    buttonHeight: 40,
                    buttonWidth: 80,
                    itemHeight: 40,
                  ),
                ),
                DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    hint: Text(
                      'About',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    icon: Transform.translate(
                      offset: Offset(-14, 0),
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
                                  fontSize: 14,
                                ),
                              ),
                            ))
                        .toList(),
                    value: AboutValue,
                    onChanged: (value) {
                      setState(() {
                        AboutValue = value as String;
                      });
                    },
                    buttonHeight: 40,
                    buttonWidth: 80,
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
                      offset: Offset(-14, 0),
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
                                  fontSize: 14,
                                ),
                              ),
                            ))
                        .toList(),
                    value: ServicesValue,
                    onChanged: (value) {
                      setState(() {
                        ServicesValue = value as String;
                      });
                    },
                    buttonHeight: 40,
                    buttonWidth: 120,
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
                      offset: Offset(-14, 0),
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
                                  fontSize: 14,
                                ),
                              ),
                            ))
                        .toList(),
                    value: BlogsValue,
                    onChanged: (value) {
                      setState(() {
                        BlogsValue = value as String;
                      });
                    },
                    buttonHeight: 40,
                    buttonWidth: 80,
                    itemHeight: 40,
                  ),
                ),
                DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    hint: Text(
                      'Contact',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    icon: Transform.translate(
                      offset: Offset(-14, 0),
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
                                  fontSize: 14,
                                ),
                              ),
                            ))
                        .toList(),
                    value: ContactValue,
                    onChanged: (value) {
                      setState(() {
                        ContactValue = value as String;
                      });
                    },
                    buttonHeight: 40,
                    buttonWidth: 90,
                    itemHeight: 40,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

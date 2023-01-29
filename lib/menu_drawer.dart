import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

// import 'auth_dialog.dart';

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({
    Key? key,
  }) : super(key: key);

  @override
  _MenuDrawerState createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
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

  bool _isProcessing = false;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Drawer(
      child: Container(
        color: Theme.of(context).bottomAppBarColor,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'logo.png',
                height: 40,
                width: 100,
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
                      color: Colors.black,
                    ),
                  ),
                  icon: Transform.translate(
                    offset: Offset(-14, -2),
                    child: Icon(
                      Icons.expand_more_outlined,
                      color: Colors.black,
                    ),
                  ),
                  items: listHome
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                  fontSize: 14, color: Colors.black),
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
                    borderRadius: BorderRadius.circular(10),
                  ),
                  isExpanded: true,
                  buttonHeight: 40,
                  // buttonWidth: 70,
                  itemHeight: 40,
                ),
              ),
              DropdownButtonHideUnderline(
                child: DropdownButton2(
                  hint: Text(
                    'About Us',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                  icon: Transform.translate(
                    offset: Offset(-14, -2),
                    child: Icon(
                      Icons.expand_more_outlined,
                      color: Colors.black,
                    ),
                  ),
                  items: listAbout
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                  fontSize: 14, color: Colors.black),
                            ),
                          ))
                      .toList(),
                  value: AboutValue,
                  onChanged: (value) {
                    setState(() {
                      AboutValue = value as String;
                    });
                  },
                  // dropdownDecoration: BoxDecoration(
                  //   color: Color.fromARGB(255, 171, 204, 227),
                  // ),
                  isExpanded: true,
                  buttonHeight: 40,
                  // buttonWidth: 70,
                  itemHeight: 40,
                ),
              ),
              DropdownButtonHideUnderline(
                child: DropdownButton2(
                  hint: Text(
                    'Our Services',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                  icon: Transform.translate(
                    offset: Offset(-14, -2),
                    child: Icon(
                      Icons.expand_more_outlined,
                      color: Colors.black,
                    ),
                  ),
                  items: listServices
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                  fontSize: 14, color: Colors.black),
                            ),
                          ))
                      .toList(),
                  value: ServicesValue,
                  onChanged: (value) {
                    setState(() {
                     ServicesValue = value as String;
                    });
                  },
                  // dropdownDecoration: BoxDecoration(
                  //   color: Color.fromARGB(255, 171, 204, 227),
                  // ),
                  isExpanded: true,
                  buttonHeight: 40,
                  // buttonWidth: 70,
                  itemHeight: 40,
                ),
              ),
              DropdownButtonHideUnderline(
                child: DropdownButton2(
                  hint: Text(
                    'Blogs',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                  icon: Transform.translate(
                    offset: Offset(-14, -2),
                    child: Icon(
                      Icons.expand_more_outlined,
                      color: Colors.black,
                    ),
                  ),
                  items: listBlogs
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                  fontSize: 14, color: Colors.black),
                            ),
                          ))
                      .toList(),
                  value: BlogsValue,
                  onChanged: (value) {
                    setState(() {
                      BlogsValue = value as String;
                    });
                  },
                  // dropdownDecoration: BoxDecoration(
                  //   color: Color.fromARGB(255, 171, 204, 227),
                  // ),
                  isExpanded: true,
                  buttonHeight: 40,
                  // buttonWidth: 70,
                  itemHeight: 40,
                ),
              ),
              DropdownButtonHideUnderline(
                child: DropdownButton2(
                  hint: Text(
                    'Contact Us',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                  icon: Transform.translate(
                    offset: Offset(-14, -2),
                    child: Icon(
                      Icons.expand_more_outlined,
                      color: Colors.black,
                    ),
                  ),
                  items: listContact
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                  fontSize: 14, color: Colors.black),
                            ),
                          ))
                      .toList(),
                  value:ContactValue,
                  onChanged: (value) {
                    setState(() {
                      ContactValue = value as String;
                    });
                  },
                  // dropdownDecoration: BoxDecoration(
                  //   color: Color.fromARGB(255, 171, 204, 227),
                  // ),
                  isExpanded: true,
                  buttonHeight: 40,
                  // buttonWidth: 70,
                  itemHeight: 40,
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}

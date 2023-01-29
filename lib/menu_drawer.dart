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
              SizedBox(
                width: screenSize.width / 15,
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
                  dropdownDecoration: BoxDecoration(
                    color: Color.fromARGB(255, 171, 204, 227),
                  ),
                  buttonHeight: 40,
                  buttonWidth: 70,
                  itemHeight: 40,
                ),
              ),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[0] = true : _isHovering[0] = false;
                  });
                },
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Home',
                      style: TextStyle(
                        color: _isHovering[0] ? Colors.blue : Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[0],
                      child: Container(
                        height: 2,
                        width: 20,
                        // color: Colors.purple,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3.0, bottom: 3.0),
                child: Divider(
                  color: Colors.white,
                  thickness: 2,
                ),
              ),
              SizedBox(
                width: screenSize.width / 15,
              ),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[1] = true : _isHovering[1] = false;
                  });
                },
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'About Us',
                      style: TextStyle(
                        color: _isHovering[1] ? Colors.blue : Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[1],
                      child: Container(
                        height: 2,
                        width: 20,
                        // color: Colors.purple,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3.0, bottom: 3.0),
                child: Divider(
                  color: Colors.white,
                  thickness: 2,
                ),
              ),
              SizedBox(
                width: screenSize.width / 15,
              ),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[2] = true : _isHovering[2] = false;
                  });
                },
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Our Services',
                      style: TextStyle(
                        color: _isHovering[2] ? Colors.blue : Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[2],
                      child: Container(
                        height: 2,
                        width: 20,
                        // color: Colors.purple,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3.0, bottom: 3.0),
                child: Divider(
                  color: Colors.white,
                  thickness: 2,
                ),
              ),
              SizedBox(
                width: screenSize.width / 15,
              ),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[3] = true : _isHovering[3] = false;
                  });
                },
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Blogs',
                      style: TextStyle(
                        color: _isHovering[3] ? Colors.blue : Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[3],
                      child: Container(
                        height: 2,
                        width: 20,
                        // color: Colors.purple,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3.0, bottom: 3.0),
                child: Divider(
                  color: Colors.white,
                  thickness: 2,
                ),
              ),
              SizedBox(
                width: screenSize.width / 15,
              ),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[4] = true : _isHovering[4] = false;
                  });
                },
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Contact Us',
                      style: TextStyle(
                        color: _isHovering[4] ? Colors.blue : Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[4],
                      child: Container(
                        height: 2,
                        width: 20,
                        // color: Colors.purple,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

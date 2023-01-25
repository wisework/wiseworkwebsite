import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:google_fonts/google_fonts.dart';

class TopBarContents extends StatefulWidget {
  final double opacity;

  TopBarContents(this.opacity);

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

final List<String> listHome = <String>['h1', 'h2', 'h3', 'h4'];
final List<String> listAbout = <String>['ab1', 'ab2', 'ab3', 'ab4'];
final List<String> listServices = <String>['sv1', 'sv2', 'sv3', 'sv4'];
final List<String> listBlogs = <String>['b1', 'b2', 'b3', 'b4'];
final List<String> listContact = <String>['ct1', 'ct2', 'ct3', 'ct4'];

class _TopBarContentsState extends State<TopBarContents> {
  String? HomeValue;
  String? AboutValue;
  String? ServicesValue;
  String? BlogsValue;
  String? ContactValue;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return PreferredSize(
      preferredSize: Size(screenSize.width, 1000),
      child: Container(
        child: AppBar(
          leading: Image.asset('assets/logo.png'),
          title: Text("My app"),
          backgroundColor: Color.fromARGB(255, 52, 144, 206),
          actions: <Widget>[
            Row(
              children: [
                DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    icon: Transform.translate(
                      offset: (Offset(-15, 0)),
                      child: const Icon(
                        Icons.expand_more,
                        color: Colors.white,
                      ),
                    ),
                    hint: Text(
                      'Home',
                      style: GoogleFonts.ibmPlexSans(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    items: listHome
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 87, 87, 87),
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
                    buttonHeight: 20,
                    buttonWidth: 80,
                    itemHeight: 40,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    icon: Transform.translate(
                      offset: (Offset(-13, 0)),
                      child: const Icon(
                        Icons.expand_more,
                        color: Colors.white,
                      ),
                    ),
                    hint: Text(
                      'About Us',
                      style: GoogleFonts.ibmPlexSans(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    items: listAbout
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 87, 87, 87),
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
                    buttonHeight: 20,
                    buttonWidth: 100,
                    itemHeight: 40,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    icon: Transform.translate(
                      offset: (Offset(-10, 0)),
                      child: const Icon(
                        Icons.expand_more,
                        color: Colors.white,
                      ),
                    ),
                    hint: Text(
                      'Our Services',
                      style: GoogleFonts.ibmPlexSans(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    items: listServices
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 87, 87, 87),
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
                    buttonHeight: 20,
                    buttonWidth: 120,
                    itemHeight: 40,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    icon: Transform.translate(
                      offset: (Offset(-8, 0)),
                      child: const Icon(
                        Icons.expand_more,
                        color: Colors.white,
                      ),
                    ),
                    hint: Text(
                      'Blogs',
                      style: GoogleFonts.ibmPlexSans(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    items: listBlogs
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 87, 87, 87),
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
                    buttonHeight: 20,
                    buttonWidth: 70,
                    itemHeight: 40,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    icon: Transform.translate(
                      offset: (Offset(-17, 0)),
                      child: const Icon(
                        Icons.expand_more,
                        color: Colors.white,
                      ),
                    ),
                    hint: Text(
                      'Contact Us',
                      style: GoogleFonts.ibmPlexSans(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    items: listContact
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 87, 87, 87),
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
                    buttonHeight: 20,
                    buttonWidth: 120,
                    itemHeight: 40,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

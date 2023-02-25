import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/customers/customerspage.dart';

class NavBar extends StatefulWidget {
  // final double opacity;

  NavBar();

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavBar> {
  final List<String> listAbout = <String>[
    'About Us',
    'Our Story',
    'Our Rew',
    'Our Cus',
  ];
  final List<String> listServices = <String>[
    'Our Services',
    'PDPA ',
    'Governance ',
    'Request Demo',
  ];
  String? AboutValue;
  String? ServicesValue;

  final List _isHovering = [
    false,
    false,
    false,
    false,
  ];

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
            // SizedBox(
            //   width: screenSize.width / 4,
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 9, bottom: 13, left: 91),
              child: SizedBox(
                height: 58,
                width: 157,
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
                onPressed: () {},
              ),
            ),
            SizedBox(
              width: 40,
            ),
            DropdownButtonHideUnderline(
              child: DropdownButton2(
                hint: Text(
                  'About Us',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                icon: Transform.translate(
                  offset: Offset(-12, -2),
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
                            style: GoogleFonts.ibmPlexSansThai(
                                fontSize: 16,
                                // color: Color.fromARGB(255, 52, 145, 206),
                                color: Color.fromARGB(255, 87, 87, 87),
                                fontWeight: FontWeight.w400),
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
                  color: Colors.white,
                  // borderRadius: BorderRadius.circular(5)
                ),
                buttonHeight: 18,
                buttonWidth: 100,
                itemHeight: 40,
              ),
            ),
            SizedBox(
              width: 40,
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
                  offset: Offset(-12, -2),
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
                            style: GoogleFonts.ibmPlexSansThai(
                                fontSize: 16,
                                // color: Color.fromARGB(255, 52, 145, 206),
                                color: Color.fromARGB(255, 87, 87, 87),
                                fontWeight: FontWeight.w400),
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
                  color: Colors.white,
                  // borderRadius: BorderRadius.circular(5)
                ),
                buttonHeight: 18,
                buttonWidth: 130,
                itemHeight: 50,
              ),
            ),
            SizedBox(
              width: 40,
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
            SizedBox(
              width: 27,
            ),
            TextButton(
              child: Text(
                "Contact Us",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
               
              },
            ),
            SizedBox(
              width: 42,
            ),
            Container(
              width: 103,
              height: 38,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextButton(
                onPressed: () {
                  // Perform some action
                },
                child: Text(
                  'Search',
                  style: GoogleFonts.ibmPlexSansThai(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                // Changes the background color
              ),
            ),
            SizedBox(
              width: 29,
            ),
            Container(
              width: 90,
              height: 38,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextButton(
                onPressed: () {
                  // Perform some action
                },

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.language,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'TH',
                      style: GoogleFonts.ibmPlexSansThai(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
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

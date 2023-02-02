import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class Footer extends StatefulWidget {
  Footer();

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    var logo = Container(
        height: 60, width: 160, child: new Image.asset('/footer/logo.png'));

    var address = Container(
      height: 90,
      width: 300,
      child: Column(
        children: [
          Transform.translate(
              offset: Offset(-170, 25),
              child: Icon(
                Icons.location_pin,
                color: Colors.white,
              )),
          Text(
            "7 Soi Lat Pla Khao 19, Chorakhe Bua Subdistrict, Lat Phrao District, Bangkok",
            style: GoogleFonts.ibmPlexSansThai(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );

    var mail = Container(
      height: 50,
      width: 200,
      child: Column(
        children: [
          Transform.translate(
              offset: Offset(-130, 25),
              child: Icon(
                Icons.mail_outline,
                color: Colors.white,
              )),
          Text(
            "admin@thewiseworks.com",
            style: GoogleFonts.ibmPlexSansThai(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );

    var tel = Container(
      height: 25,
      width: 300,
      child: Text(
        "02-103-4376",
        style: GoogleFonts.ibmPlexSansThai(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
      ),
    );

    var QLink = Container(
      child: Text(
        'Quick Links',
        style: GoogleFonts.ibmPlexSansThai(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
      ),
    );

    List<String> navbar = ["Home", "About Us", "Our reward", "Blogs", "FAQ"];

    var navbarlist = Container(
      color: Color.fromARGB(0, 255, 193, 7),
      height: 122,
      width: 135,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: navbar.length,
        itemBuilder: (context, index) {
          return ListTile(
            dense: true,
            title: Transform.translate(
              offset: Offset(0, 2.5),
              child: Text(
                navbar[index],
                style: GoogleFonts.ibmPlexSansThai(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ),
          );
        },
      ),
    );

    var connect = Container(
      child: Text(
        "Connect with Us",
        style: GoogleFonts.ibmPlexSansThai(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
    );

    List<String> app = [
      "/footer/fb.png",
      "/footer/ig.png",
      "/footer/yt.png",
      "/footer/tiktok.png"
    ];

    var appList = Container(
      color: Color.fromARGB(0, 255, 193, 7),
      height: 122,
      width: 135,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: app.length,
        itemBuilder: (context, index) {
          return ListTile(
            dense: true,
            title: Transform.translate(
              offset: Offset(0, 2.5),
              child: Image.asset(
                app[index],
              ),
            ),
          );
        },
      ),
    );

    var services = Container(
      child: Text(
        "Our Services",
        style: GoogleFonts.ibmPlexSansThai(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
    );

    List<String> servicesList = [
      "PDPA Management Platform",
      "Governance Assurance Suite",
      "Get a Free Demo",
      "Key Partners",
      "Join Our Amazing Team"
    ];

    var svlist = Container(
      color: Color.fromARGB(0, 255, 193, 7),
      height: 200,
      width: 258,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: servicesList.length,
        itemBuilder: (context, index) {
          return ListTile(
            dense: true,
            title: Transform.translate(
              offset: Offset(0, 2.5),
              child: Text(
                servicesList[index],
                style: GoogleFonts.ibmPlexSansThai(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ),
          );
        },
      ),
    );

    var contact = Container(
      child: Text(
        "Contact Us",
        style: GoogleFonts.ibmPlexSansThai(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
    );

    final _nameController = TextEditingController();
    final _EmailController = TextEditingController();

    var form = Container(
      width: 400,
      child: TextFormField(
        // cursorWidth: 20.0,
        decoration: InputDecoration(
          filled: true,
          hintText: 'Text Box',
          hintStyle: TextStyle(color: Colors.blueGrey),
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: BorderSide(color: Colors.white, width: 2.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: BorderSide(color: Colors.white, width: 2.0),
          ),
        ),

        cursorColor: Colors.white,
        style: TextStyle(color: Colors.blueGrey),
        controller: _nameController,
      ),
    );

    var formEmail = Container(
      width: 200,
      child: TextFormField(
        // cursorWidth: 10.0,
        decoration: InputDecoration(
          filled: true,
          hintText: 'Enter Your Email',
          hintStyle: TextStyle(color: Colors.blueGrey),
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: BorderSide(color: Colors.blue, width: 2.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: BorderSide(color: Colors.white, width: 2.0),
          ),
        ),

        cursorColor: Colors.white,
        style: TextStyle(color: Colors.blueGrey),
        controller: _EmailController,
      ),
    );

    var button = SizedBox(
      width: 193,
      height: 48,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 75, 195, 211),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
        ),
        child: Text(
          'Send message',
          style: GoogleFonts.ibmPlexSansThai(
            fontSize: MediaQuery.of(context).size.width > 1000 ? 20 : 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );

    var line = Container(
      height: 2,
      color: Colors.white,
    );

    bool _isLargeScreen() {
      final double screenWidth = MediaQuery.of(context).size.width;
      return screenWidth > 1400;
    }

    return Center(
      child: Container(
        color: Color.fromARGB(255, 52, 144, 206),
        height: 447,
        // height: 700,
        // width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            _isLargeScreen()
                ? Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        width: 450,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                logo,
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 40, left: 50),
                                  child: address,
                                ),
                                mail,
                                Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: tel,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 250,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              QLink,
                              navbarlist,
                              connect,
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 250,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              services,
                              svlist,
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        width: 450,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                contact,
                                form,
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    formEmail,
                                    button,
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ])
                : Container(
                    child: Column(
                      children: [
                        logo,
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}

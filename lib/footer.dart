import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:wiseintern/main.dart';

class Footer extends StatefulWidget {
  Footer();

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    var address = Container(
      height: 65,
      width: 292,
      child: Text(
        "7 Soi Lat Pla Khao 19, Chorakhe Bua Subdistrict, Lat Phrao District, Bangkok",
        style: GoogleFonts.ibmPlexSansThai(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
      ),
    );

    List<String> listLo = [
      "/footer/location.png",
      "/footer/mail.png",
      "/footer/tel.png"
    ];
    var listImg = Container(
      color: Color.fromARGB(0, 255, 193, 7),
      height: 130,
      width: 50,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: listLo.length,
        itemBuilder: (context, index) {
          return ListTile(
            dense: true,
            title: Transform.translate(
              offset: Offset(0, 2.5),
              child: Image.asset(
                listLo[index],
              ),
            ),
          );
        },
      ),
    );

    var mail = Container(
      height: 30,
      width: 200,
      child: Text(
        "admin@thewiseworks.com",
        style: GoogleFonts.ibmPlexSansThai(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
      ),
    );

    var tel = Container(
      height: 30,
      width: 200,
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
      height: 200,
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
                    color: Color.fromARGB(255, 218, 218, 218)),
              ),
            ),
          );
        },
      ),
    );

    // var connect = Container(
    //   width: 365,
    //   height: 30,
    //   child: Text(
    //     "Connect with Us",
    //     style: GoogleFonts.ibmPlexSansThai(
    //       fontSize: 18,
    //       fontWeight: FontWeight.w700,
    //       color: Colors.white,
    //     ),
    //   ),
    // );

    // List<String> app = [
    //   "/footer/fb.png",
    //   "/footer/ig.png",
    //   "/footer/yt.png",
    //   "/footer/tiktok.png"
    // ];

    // var appList = Container(
    //   color: Color.fromARGB(0, 255, 193, 7),
    //   height: 122,
    //   width: 135,
    //   child: ListView.builder(
    //     shrinkWrap: true,
    //     itemCount: app.length,
    //     itemBuilder: (context, index) {
    //       return ListTile(
    //         dense: true,
    //         title: Transform.translate(
    //           offset: Offset(0, 2.5),
    //           child: Image.asset(
    //             app[index],
    //           ),
    //         ),
    //       );
    //     },
    //   ),
    // );

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
      width: 270,
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
                  color: Color.fromARGB(255, 218, 218, 218),
                ),
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
    var get = Container(
      width: 356,
      height: 21,
      child: Text(
        "Get latest updates and offers. Try It Today.",
        style: GoogleFonts.ibmPlexSansThai(
            fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white),
      ),
    );

    var line = Container(
      width: 1316,
      height: 1,
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
                ? Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                width: 400,
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Image.asset("/footer/logo.png")
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 50),
                                              child: Column(
                                                children: [listImg],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 50),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      address,
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      mail,
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    // crossAxisAlignment:
                                                    //     CrossAxisAlignment.start,
                                                    children: [
                                                      tel,
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 470,
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          QLink,
                                          navbarlist,
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          services,
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              svlist,
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Wrap(
                                        spacing: 10.0,
                                        children: [
                                          Text(
                                            "Connect with Us",
                                            style: GoogleFonts.ibmPlexSansThai(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Image.asset("/footer/fb.png"),
                                          Image.asset("/footer/ig.png"),
                                          Image.asset("/footer/yt.png"),
                                          Image.asset("/footer/tiktok.png"),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                width: 431,
                                child: Column(
                                  children: [
                                    Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 20),
                                              child: contact,
                                            ),
                                          ],
                                        ),
                                        form,
                                        SizedBox(
                                          height: 27,
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15),
                                              child: formEmail,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15),
                                              child: button,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 22,
                                        ),
                                        Row(
                                          children: [
                                            get,
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ]),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: line,
                            )
                          ]),
                      Container(
                        width: 1316,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Column(children: [
                            Row(
                              children: [
                                Container(
                                  width: 400,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Wrap(
                                        spacing: 10,
                                        children: [
                                          TextButton(
                                              onPressed: () {},
                                              child: Text(
                                                "Provacy Policy",
                                                style:
                                                    GoogleFonts.ibmPlexSansThai(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w400),
                                              )),
                                          TextButton(
                                              onPressed: () {},
                                              child: Text(
                                                "Term of Services",
                                                style:
                                                    GoogleFonts.ibmPlexSansThai(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w400),
                                              )),
                                          TextButton(
                                              onPressed: () {},
                                              child: Text(
                                                "Cookie",
                                                style:
                                                    GoogleFonts.ibmPlexSansThai(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w400),
                                              ))
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 470,
                                ),
                                Container(
                                    width: 430,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "© Copyright 2022 Thewiseworks | All Right Reserved.",
                                          style: GoogleFonts.ibmPlexSansThai(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400),
                                        )
                                      ],
                                    ))
                              ],
                            )
                          ]),
                        ),
                      ),
                    ],
                  )
                : Container(
                    child: Column(
                      children: [
                        line,
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}

import 'dart:html';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:wiseintern/main.dart';
import '../responsive.dart';

class Footer extends StatefulWidget {
  Footer();

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    List<String> listLo = [
      "/footer/location.png",
      "/footer/mail.png",
      "/footer/tel.png"
    ];
    var listImg = Container(
        // color: Color.fromARGB(255, 195, 152, 22),
        height: Responsive.isDesktop(context)
            ? 150
            : Responsive.isTablet(context)
                ? 100
                : 50,
        width: Responsive.isDesktop(context) ? 50 : 20,
        child: Column(
          children: [
            Image.asset(
              "/footer/location.png",
            ),
            SizedBox(
              height: Responsive.isDesktop(context) ? 35 : 15,
            ),
            Image.asset(
              "/footer/mail.png",
            ),
            SizedBox(
              height: Responsive.isDesktop(context) ? 20 : 10,
            ),
            Image.asset(
              "/footer/tel.png",
            ),
          ],
        ));

    var list2 = Container(
        color: Color.fromARGB(0, 255, 193, 7),
        height: Responsive.isDesktop(context) ? 130 : 100,
        width: Responsive.isDesktop(context) ? 292 : 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "7 Soi Lat Pla Khao 19, Chorakhe Bua Subdistrict, Lat Phrao District, Bangkok",
              style: GoogleFonts.ibmPlexSansThai(
                fontSize: Responsive.isDesktop(context) ? 16 : 12,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: Responsive.isDesktop(context) ? 10 : 5,
            ),
            Text(
              "admin@thewiseworks.com",
              style: GoogleFonts.ibmPlexSansThai(
                fontSize: Responsive.isDesktop(context) ? 16 : 12,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: Responsive.isDesktop(context) ? 10 : 5,
            ),
            Text(
              "02-103-4376",
              style: GoogleFonts.ibmPlexSansThai(
                fontSize: Responsive.isDesktop(context) ? 16 : 12,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ],
        ));

    var QLink = Container(
      child: Text(
        'Quick Links',
        style: GoogleFonts.ibmPlexSansThai(
            color: Colors.white,
            fontSize: Responsive.isDesktop(context) ? 18 : 14,
            fontWeight: FontWeight.w600),
      ),
    );

    List<String> navbar = ["Home", "About Us", "Our reward", "Blogs", "FAQ"];
    String? NavbarValue;

    var navbarlist = Container(
      color: Color.fromARGB(0, 255, 193, 7),
      height: 150,
      width: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: navbar.length,
        itemBuilder: (context, index) {
          return Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  navbar[index],
                  style: GoogleFonts.ibmPlexSansThai(
                      fontSize: Responsive.isDesktop(context) ? 15 : 12,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 218, 218, 218)),
                ),
              ),
              SizedBox(height: 0.0),
            ],
          );
        },
      ),
    );

    var services = Container(
      child: Text(
        "Our Services",
        style: GoogleFonts.ibmPlexSansThai(
          fontSize: Responsive.isDesktop(context) ? 18 : 14,
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
    String? servicesValue;

    var svlist = Container(
      color: Color.fromARGB(0, 255, 193, 7),
      height: 150,
      width: Responsive.isDesktop(context) ? 200 : 180,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: servicesList.length,
        itemBuilder: (context, index) {
          return Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  servicesList[index],
                  style: GoogleFonts.ibmPlexSansThai(
                      fontSize: Responsive.isDesktop(context) ? 15 : 12,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 218, 218, 218)),
                ),
              ),
              SizedBox(height: 0.0),
            ],
          );
        },
      ),
    );

    List<String> appList = [
      "/footer/fb.png",
      "/footer/ig.png",
      "/footer/yt.png",
      "/footer/tiktok.png",
    ];

    var app = Container(
      color: Color.fromARGB(0, 255, 193, 7),
      height: 150,
      width: 50,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: appList.length,
        itemBuilder: (context, index) {
          return Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(child: Image.asset(appList[index])),
              SizedBox(height: 5.0),
            ],
          );
        },
      ),
    );

    var contact = Container(
      child: Text(
        "Contact Us",
        style: GoogleFonts.ibmPlexSansThai(
          fontSize: Responsive.isDesktop(context) ? 18 : 14,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
    );

    final _nameController = TextEditingController();
    final _EmailController = TextEditingController();
    FocusNode _focusNode = new FocusNode();

    var form = Container(
      width: Responsive.isDesktop(context) ? 360 : 300,
      height: Responsive.isDesktop(context) ? 48 : 40,
      child: TextFormField(
        // cursorWidth: 20.0,
        decoration: InputDecoration(
          filled: true,
          hintText: 'Text Box',
          hintStyle: GoogleFonts.ibmPlexSansThai(
            color: Colors.blueGrey,
            fontSize: Responsive.isDesktop(context) ? 18 : 12,
          ),
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: BorderSide(color: Colors.white, width: 2.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: BorderSide(color: Colors.pink, width: 5.0),
          ),
        ),
        focusNode: _focusNode,
        onTap: () {
          FocusScope.of(context).requestFocus(_focusNode);
        },
        cursorColor: Colors.white,
        style: TextStyle(
          color: Colors.blueGrey,
          fontSize: Responsive.isDesktop(context) ? 18 : 12,
        ),
        controller: _nameController,
      ),
    );

    var formEmail = Container(
      width: Responsive.isDesktop(context) ? 170 : 145,
      height: Responsive.isDesktop(context) ? 48 : 40,
      child: TextFormField(
        // cursorWidth: 10.0,
        decoration: InputDecoration(
          filled: true,
          hintText: 'Enter Your Email',
          hintStyle: GoogleFonts.ibmPlexSansThai(
            color: Colors.blueGrey,
            fontSize: Responsive.isDesktop(context) ? 18 : 12,
          ),
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: BorderSide(color: Colors.white, width: 2.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: BorderSide(color: Colors.red, width: 5.0),
          ),
        ),
        // focusNode: _focusNode,
        onTap: () {},
        cursorColor: Colors.white,
        style: TextStyle(color: Colors.blueGrey),
        controller: _EmailController,
      ),
    );

    var button = SizedBox(
      width: Responsive.isDesktop(context) ? 170 : 145,
      height: Responsive.isDesktop(context) ? 48 : 40,
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
            fontSize: Responsive.isDesktop(context) ? 19 : 12,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
    var get = Container(
      width: Responsive.isDesktop(context) ? 356 : 200,
      height: 21,
      child: Text(
        "Get latest updates and offers. Try It Today.",
        style: GoogleFonts.ibmPlexSansThai(
            fontSize: Responsive.isDesktop(context) ? 16 : 12,
            fontWeight: FontWeight.w400,
            color: Colors.white),
      ),
    );

    var line = Container(
      width: 1316,
      height: 1,
      color: Colors.white,
    );

    // bool _isLargeScreen() {
    //   final double screenWidth = MediaQuery.of(context).size.width;
    //   return screenWidth > 1400;
    // }

    return Center(
      child: Container(
        color: Color.fromARGB(255, 52, 144, 206),
        // height: 447,
        // height: 700,
        width: Responsive.isDesktop(context)
            ? 1440
            : Responsive.isTablet(context)
                ? 900
                : 500,
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Responsive.isDesktop(context)
                ? Container(
                    width: 1200,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 380,
                                  // height: 250,
                                  child: Column(
                                    children: [
                                      Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Image.asset("/footer/logo.png")
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Wrap(
                                                spacing: 10.0,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 35),
                                                    child: Column(
                                                      children: [listImg],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 30),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [list2],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 380,
                                  // height: 250,
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
                                              Wrap(
                                                spacing: 10.0,
                                                children: [
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  navbarlist
                                                ],
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              services,
                                              Wrap(
                                                spacing: 10.0,
                                                children: [
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  svlist
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      // SizedBox(
                                      //   height: 25,
                                      // ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Wrap(
                                            spacing: 10.0,
                                            children: [
                                              Text(
                                                "Connect with Us",
                                                style:
                                                    GoogleFonts.ibmPlexSansThai(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
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
                                Container(
                                  width: 380,
                                  // height: 230,
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
                                              contact,
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          form,
                                          SizedBox(
                                            height: 15,
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
                              ]),
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              line,
                              Column(children: [
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          width: 1200,
                                          height: 100,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Wrap(
                                                spacing: 10,
                                                children: [
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      TextButton(
                                                          onPressed: () {},
                                                          child: Text(
                                                            "Privacy Policy",
                                                            style: GoogleFonts
                                                                .ibmPlexSansThai(
                                                                    color: Colors
                                                                        .white,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400),
                                                          )),
                                                      TextButton(
                                                          onPressed: () {},
                                                          child: Text(
                                                            "Term of Services",
                                                            style: GoogleFonts
                                                                .ibmPlexSansThai(
                                                                    color: Colors
                                                                        .white,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400),
                                                          )),
                                                      TextButton(
                                                          onPressed: () {},
                                                          child: Text(
                                                            "Cookie",
                                                            style: GoogleFonts
                                                                .ibmPlexSansThai(
                                                                    color: Colors
                                                                        .white,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400),
                                                          )),
                                                      Container(
                                                        // color: Colors.amber,
                                                        height: 20,
                                                        width: 580,
                                                      ),
                                                      Container(
                                                          // width: 400,
                                                          child: Text(
                                                        "© Copyright 2022 Thewiseworks | All Right Reserved.",
                                                        style: GoogleFonts
                                                            .ibmPlexSansThai(
                                                                color: Colors
                                                                    .white,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                      )),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ]),
                            ]),
                        // Container(
                        //   width: 1316,
                        //   child: Padding(
                        //     padding: const EdgeInsets.only(top: 30),
                        //     child: Column(children: [
                        //       Row(
                        //         children: [
                        //           Container(
                        //             width: 420,
                        //             child: Column(
                        //               mainAxisAlignment:
                        //                   MainAxisAlignment.start,
                        //               crossAxisAlignment:
                        //                   CrossAxisAlignment.start,
                        //               children: [
                        //                 Wrap(
                        //                   spacing: 10,
                        //                   children: [
                        //                     TextButton(
                        //                         onPressed: () {},
                        //                         child: Text(
                        //                           "Privacy Policy",
                        //                           style: GoogleFonts
                        //                               .ibmPlexSansThai(
                        //                                   color: Colors.white,
                        //                                   fontWeight:
                        //                                       FontWeight.w400),
                        //                         )),
                        //                     TextButton(
                        //                         onPressed: () {},
                        //                         child: Text(
                        //                           "Term of Services",
                        //                           style: GoogleFonts
                        //                               .ibmPlexSansThai(
                        //                                   color: Colors.white,
                        //                                   fontWeight:
                        //                                       FontWeight.w400),
                        //                         )),
                        //                     TextButton(
                        //                         onPressed: () {},
                        //                         child: Text(
                        //                           "Cookie",
                        //                           style: GoogleFonts
                        //                               .ibmPlexSansThai(
                        //                                   color: Colors.white,
                        //                                   fontWeight:
                        //                                       FontWeight.w400),
                        //                         ))
                        //                   ],
                        //                 ),
                        //               ],
                        //             ),
                        //           ),
                        //           Container(
                        //             width: 350,
                        //           ),
                        //           Container(
                        //               width: 430,
                        //               child: Column(
                        //                 crossAxisAlignment:
                        //                     CrossAxisAlignment.end,
                        //                 children: [
                        //                   Text(
                        //                     "© Copyright 2022 Thewiseworks | All Right Reserved.",
                        //                     style: GoogleFonts.ibmPlexSansThai(
                        //                         color: Colors.white,
                        //                         fontWeight: FontWeight.w400),
                        //                   )
                        //                 ],
                        //               ))
                        //         ],
                        //       )
                        //     ]),
                        //   ),
                        // ),
                      ],
                    ),
                  )
                : Responsive.isTablet(context)
                    ? Container(
                        width: 600,
                        child: Column(
                          children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "/footer/logo.png",
                                    height: 80,
                                    width: 140,
                                  )
                                ]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                listImg,
                                SizedBox(
                                  width: 20,
                                ),
                                list2
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 25, right: 25),
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 200,
                                    height: 160,
                                    // color: Colors.amber,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        QLink,
                                        services,
                                        Text(
                                          'Connect with Us',
                                          style: GoogleFonts.ibmPlexSansThai(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Wrap(
                                          spacing: 10,
                                          children: [
                                            Wrap(
                                              spacing: 10.0,
                                              children: [
                                                Image.asset("/footer/fb.png"),
                                                Image.asset("/footer/ig.png"),
                                                Image.asset("/footer/yt.png"),
                                                Image.asset(
                                                    "/footer/tiktok.png"),
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 350,
                                    height: 160,
                                    child: Column(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            contact,
                                            SizedBox(
                                              height: 10,
                                            ),
                                            form,
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Wrap(
                                              spacing: 10,
                                              children: [formEmail, button],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            get
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 1,
                                  width: 600,
                                  color: Colors.white,
                                )
                              ],
                            ),
                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Wrap(
                                  spacing: 10,
                                  children: [
                                    TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          "Privacy Policy",
                                          style: GoogleFonts.ibmPlexSansThai(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400),
                                        )),
                                    TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          "Term of Services",
                                          style: GoogleFonts.ibmPlexSansThai(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400),
                                        )),
                                    TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          "Cookie",
                                          style: GoogleFonts.ibmPlexSansThai(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400),
                                        ))
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "© Copyright 2022 Thewiseworks | All Right Reserved.",
                                  style: GoogleFonts.ibmPlexSansThai(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    : Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "/footer/logo.png",
                                  height: 70,
                                  width: 70,
                                ),
                              ],
                            )
                          ],
                        ),
                      )
          ],
        ),
      ),
    );
  }
}

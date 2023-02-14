import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/responsive.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AwardsPage extends StatefulWidget {
  @override
  _AwardsState createState() => _AwardsState();
}

class _AwardsState extends State<AwardsPage> {
  CarouselController _controller = CarouselController();
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 1440,
        height: 1010,
        color: Colors.white,
        // color: Color.fromARGB(255, 242, 22, 22),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 52, left: 119),
                  child: Container(
                    width: 314,
                    height: 150,
                    // color: Colors.amber,
                    child: Text(
                      "Awards&\nAchievement",
                      style: GoogleFonts.ibmPlexSansThai(
                          fontSize: 48,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 5, 45, 97)),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 125, left: 72),
                  child: Container(
                    width: 887,
                    height: 110,
                    // color: Colors.amber,
                    child: Text(
                      "การันตีความเชี่ยวชาญด้วยทีมที่ปรึกษาด้านกฎหมาย และนักพัฒนา\nมากประสบการณ์ที่ผ่านการฝึกอบรม และได้รับรองมาตรฐานระดับสากล",
                      style: GoogleFonts.ibmPlexSansThai(
                          fontSize: 28,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                      textAlign: TextAlign.start,
                    ),
                  ),
                )
              ],
            ),
            Stack(
              children: [
                Container(
                  width: 1440,
                  height: 600,
                  color: Colors.white,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CarouselSlider(
                          options: CarouselOptions(
                            enlargeCenterPage: false,
                            // viewportFraction: 0.5,
                            height: 600,
                            autoPlay: false,
                            onPageChanged: (index, reason) {
                              setState(() {
                                _current = index;
                                // print('Current Page: $_current');
                              });
                            },
                          ),
                          items: [
                            Container(
                                // margin: const EdgeInsets.all(10),
                                // height: 1000,
                                width: 1400,
                                // color: Colors.amber,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          // color: Colors.lightBlue,
                                          width: 360,
                                          height: 128,
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                  width: 70,
                                                  height: 70,
                                                  child: Image.asset(
                                                      "/about/awards/iso27001.png")),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 25, left: 10),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "ISO/IEC 27001",
                                                      style: GoogleFonts
                                                          .ibmPlexSans(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      75,
                                                                      196,
                                                                      213)),
                                                      textAlign:
                                                          TextAlign.start,
                                                    ),
                                                    Text(
                                                      "Information Security Management System:\nISMS ",
                                                      style: GoogleFonts
                                                          .ibmPlexSans(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color:
                                                                  Colors.black),
                                                      textAlign:
                                                          TextAlign.start,
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 350,
                                          height: 128,
                                          // color:Color.fromARGB(255, 7, 255, 32),
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                  width: 70,
                                                  height: 70,
                                                  child: Image.asset(
                                                      "/about/awards/iso27017.png")),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 25, left: 10),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "ISO/IEC 27017",
                                                      style: GoogleFonts
                                                          .ibmPlexSans(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      75,
                                                                      196,
                                                                      213)),
                                                      textAlign:
                                                          TextAlign.start,
                                                    ),
                                                    Text(
                                                      "Information technology",
                                                      style: GoogleFonts
                                                          .ibmPlexSans(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color:
                                                                  Colors.black),
                                                      textAlign:
                                                          TextAlign.start,
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          // color: Colors.indigo,
                                          width: 300,
                                          height: 128,
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                  width: 70,
                                                  height: 70,
                                                  child: Image.asset(
                                                      "/about/awards/coso.png")),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 25, left: 10),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "COSO-ERM",
                                                      style: GoogleFonts
                                                          .ibmPlexSans(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      75,
                                                                      196,
                                                                      213)),
                                                      textAlign:
                                                          TextAlign.start,
                                                    ),
                                                    Text(
                                                      "Enterprise Risk Management ",
                                                      style: GoogleFonts
                                                          .ibmPlexSans(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color:
                                                                  Colors.black),
                                                      textAlign:
                                                          TextAlign.start,
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          // color: Colors.lightBlue,
                                          width: 360,
                                          height: 128,
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                  width: 70,
                                                  height: 70,
                                                  child: Image.asset(
                                                      "/about/awards/iso27701.png")),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 25, left: 10),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "ISO/IEC 27701",
                                                      style: GoogleFonts
                                                          .ibmPlexSans(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      75,
                                                                      196,
                                                                      213)),
                                                      textAlign:
                                                          TextAlign.start,
                                                    ),
                                                    Text(
                                                      "Privacy Information Management System:\nPIMS",
                                                      style: GoogleFonts
                                                          .ibmPlexSans(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color:
                                                                  Colors.black),
                                                      textAlign:
                                                          TextAlign.start,
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 350,
                                          height: 128,
                                          // color:Color.fromARGB(255, 7, 255, 32),
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                  width: 70,
                                                  height: 70,
                                                  child: Image.asset(
                                                      "/about/awards/iso27018.png")),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 25, left: 10),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "ISO/IEC 27018",
                                                      style: GoogleFonts
                                                          .ibmPlexSans(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      75,
                                                                      196,
                                                                      213)),
                                                      textAlign:
                                                          TextAlign.start,
                                                    ),
                                                    Text(
                                                      "Security techniques",
                                                      style: GoogleFonts
                                                          .ibmPlexSans(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color:
                                                                  Colors.black),
                                                      textAlign:
                                                          TextAlign.start,
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          // color: Colors.indigo,
                                          width: 300,
                                          height: 128,
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                  width: 70,
                                                  height: 70,
                                                  child: Image.asset(
                                                      "/about/awards/iso9001.png")),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 25, left: 10),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "ISO/IEC 9001",
                                                      style: GoogleFonts
                                                          .ibmPlexSans(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      75,
                                                                      196,
                                                                      213)),
                                                      textAlign:
                                                          TextAlign.start,
                                                    ),
                                                    Text(
                                                      "Quality Management System",
                                                      style: GoogleFonts
                                                          .ibmPlexSans(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color:
                                                                  Colors.black),
                                                      textAlign:
                                                          TextAlign.start,
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          // color: Colors.lightBlue,
                                          width: 360,
                                          height: 128,
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                  width: 70,
                                                  height: 70,
                                                  child: Image.asset(
                                                      "/about/awards/iso20000.png")),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 25, left: 10),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "ISO/IEC 20000",
                                                      style: GoogleFonts
                                                          .ibmPlexSans(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      75,
                                                                      196,
                                                                      213)),
                                                      textAlign:
                                                          TextAlign.start,
                                                    ),
                                                    Text(
                                                      "Lead Auditor (Information Technology -\nService Management)",
                                                      style: GoogleFonts
                                                          .ibmPlexSans(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color:
                                                                  Colors.black),
                                                      textAlign:
                                                          TextAlign.start,
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 350,
                                          height: 128,
                                          // color:Color.fromARGB(255, 7, 255, 32),
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                  width: 70,
                                                  height: 70,
                                                  child: Image.asset(
                                                      "/about/awards/iso22301.png")),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 25, left: 10),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "ISO/IEC 22301",
                                                      style: GoogleFonts
                                                          .ibmPlexSans(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      75,
                                                                      196,
                                                                      213)),
                                                      textAlign:
                                                          TextAlign.start,
                                                    ),
                                                    Text(
                                                      "Business Continuity Management",
                                                      style: GoogleFonts
                                                          .ibmPlexSans(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color:
                                                                  Colors.black),
                                                      textAlign:
                                                          TextAlign.start,
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          // color: Colors.indigo,
                                          width: 300,
                                          height: 128,
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                  width: 70,
                                                  height: 70,
                                                  child: Image.asset(
                                                      "/about/awards/csa.png")),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 25, left: 10),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "CSA",
                                                      style: GoogleFonts
                                                          .ibmPlexSans(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      75,
                                                                      196,
                                                                      213)),
                                                      textAlign:
                                                          TextAlign.start,
                                                    ),
                                                    Text(
                                                      "The Cloud Security Alliance",
                                                      style: GoogleFonts
                                                          .ibmPlexSans(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color:
                                                                  Colors.black),
                                                      textAlign:
                                                          TextAlign.start,
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          // color: Colors.lightBlue,
                                          width: 360,
                                          height: 128,
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                  width: 70,
                                                  height: 70,
                                                  child: Image.asset(
                                                      "/about/awards/iso31000.png")),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 25, left: 10),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "ISO/IEC 31000",
                                                      style: GoogleFonts
                                                          .ibmPlexSans(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      75,
                                                                      196,
                                                                      213)),
                                                      textAlign:
                                                          TextAlign.start,
                                                    ),
                                                    Text(
                                                      "Risk Management",
                                                      style: GoogleFonts
                                                          .ibmPlexSans(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color:
                                                                  Colors.black),
                                                      textAlign:
                                                          TextAlign.start,
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 350,
                                          height: 128,
                                          // color:Color.fromARGB(255, 7, 255, 32),
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                  width: 70,
                                                  height: 70,
                                                  child: Image.asset(
                                                      "/about/awards/iso27005.png")),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 25, left: 10),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "ISO/IEC 27005",
                                                      style: GoogleFonts
                                                          .ibmPlexSans(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      75,
                                                                      196,
                                                                      213)),
                                                      textAlign:
                                                          TextAlign.start,
                                                    ),
                                                    Text(
                                                      "Information Security Risk Management",
                                                      style: GoogleFonts
                                                          .ibmPlexSans(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color:
                                                                  Colors.black),
                                                      textAlign:
                                                          TextAlign.start,
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          // color: Colors.indigo,
                                          width: 300,
                                          height: 128,
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                  width: 70,
                                                  height: 70,
                                                  child: Image.asset(
                                                      "/about/awards/cdpo.png")),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 25, left: 10),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "CDPO",
                                                      style: GoogleFonts
                                                          .ibmPlexSans(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      75,
                                                                      196,
                                                                      213)),
                                                      textAlign:
                                                          TextAlign.start,
                                                    ),
                                                    Text(
                                                      "Certified of Data Protection\nOfficer",
                                                      style: GoogleFonts
                                                          .ibmPlexSans(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color:
                                                                  Colors.black),
                                                      textAlign:
                                                          TextAlign.start,
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                )),
                            Container(
                              color: Colors.white,
                            )
                            // Container(
                            //     // margin: const EdgeInsets.all(10),
                            //     // height: 1000,
                            //     width: 1440,
                            //     // color: Colors.amber,
                            //     child: Column(
                            //       children: [
                            //         Row(
                            //           mainAxisAlignment:
                            //               MainAxisAlignment.center,
                            //           children: [
                            //             Container(
                            //               // color: Colors.lightBlue,
                            //               width: 360,
                            //               height: 128,
                            //               child: Row(
                            //                 children: [
                            //                   SizedBox(
                            //                       width: 70,
                            //                       height: 70,
                            //                       child: Image.asset(
                            //                           "/about/awards/iso27001.png")),
                            //                   Padding(
                            //                     padding: const EdgeInsets.only(
                            //                         top: 25, left: 10),
                            //                     child: Column(
                            //                       crossAxisAlignment:
                            //                           CrossAxisAlignment.start,
                            //                       children: [
                            //                         Text(
                            //                           "ISO/IEC 27001",
                            //                           style: GoogleFonts
                            //                               .ibmPlexSans(
                            //                                   fontSize: 20,
                            //                                   fontWeight:
                            //                                       FontWeight
                            //                                           .w700,
                            //                                   color: Color
                            //                                       .fromARGB(
                            //                                           255,
                            //                                           75,
                            //                                           196,
                            //                                           213)),
                            //                           textAlign:
                            //                               TextAlign.start,
                            //                         ),
                            //                         Text(
                            //                           "Information Security Management System:\nISMS ",
                            //                           style: GoogleFonts
                            //                               .ibmPlexSans(
                            //                                   fontSize: 14,
                            //                                   fontWeight:
                            //                                       FontWeight
                            //                                           .w400,
                            //                                   color:
                            //                                       Colors.black),
                            //                           textAlign:
                            //                               TextAlign.start,
                            //                         )
                            //                       ],
                            //                     ),
                            //                   )
                            //                 ],
                            //               ),
                            //             ),
                            //             Container(
                            //               width: 350,
                            //               height: 128,
                            //               // color:Color.fromARGB(255, 7, 255, 32),
                            //               child: Row(
                            //                 children: [
                            //                   SizedBox(
                            //                       width: 70,
                            //                       height: 70,
                            //                       child: Image.asset(
                            //                           "/about/awards/iso27017.png")),
                            //                   Padding(
                            //                     padding: const EdgeInsets.only(
                            //                         top: 25, left: 10),
                            //                     child: Column(
                            //                       crossAxisAlignment:
                            //                           CrossAxisAlignment.start,
                            //                       children: [
                            //                         Text(
                            //                           "ISO/IEC 27017",
                            //                           style: GoogleFonts
                            //                               .ibmPlexSans(
                            //                                   fontSize: 20,
                            //                                   fontWeight:
                            //                                       FontWeight
                            //                                           .w700,
                            //                                   color: Color
                            //                                       .fromARGB(
                            //                                           255,
                            //                                           75,
                            //                                           196,
                            //                                           213)),
                            //                           textAlign:
                            //                               TextAlign.start,
                            //                         ),
                            //                         Text(
                            //                           "Information technology",
                            //                           style: GoogleFonts
                            //                               .ibmPlexSans(
                            //                                   fontSize: 14,
                            //                                   fontWeight:
                            //                                       FontWeight
                            //                                           .w400,
                            //                                   color:
                            //                                       Colors.black),
                            //                           textAlign:
                            //                               TextAlign.start,
                            //                         )
                            //                       ],
                            //                     ),
                            //                   )
                            //                 ],
                            //               ),
                            //             ),
                            //             Container(
                            //               // color: Colors.indigo,
                            //               width: 350,
                            //               height: 128,
                            //               child: Row(
                            //                 children: [
                            //                   SizedBox(
                            //                       width: 70,
                            //                       height: 70,
                            //                       child: Image.asset(
                            //                           "/about/awards/coso.png")),
                            //                   Padding(
                            //                     padding: const EdgeInsets.only(
                            //                         top: 25, left: 10),
                            //                     child: Column(
                            //                       crossAxisAlignment:
                            //                           CrossAxisAlignment.start,
                            //                       children: [
                            //                         Text(
                            //                           "COSO-ERM",
                            //                           style: GoogleFonts
                            //                               .ibmPlexSans(
                            //                                   fontSize: 20,
                            //                                   fontWeight:
                            //                                       FontWeight
                            //                                           .w700,
                            //                                   color: Color
                            //                                       .fromARGB(
                            //                                           255,
                            //                                           75,
                            //                                           196,
                            //                                           213)),
                            //                           textAlign:
                            //                               TextAlign.start,
                            //                         ),
                            //                         Text(
                            //                           "Enterprise Risk Management ",
                            //                           style: GoogleFonts
                            //                               .ibmPlexSans(
                            //                                   fontSize: 14,
                            //                                   fontWeight:
                            //                                       FontWeight
                            //                                           .w400,
                            //                                   color:
                            //                                       Colors.black),
                            //                           textAlign:
                            //                               TextAlign.start,
                            //                         )
                            //                       ],
                            //                     ),
                            //                   )
                            //                 ],
                            //               ),
                            //             )
                            //           ],
                            //         ),
                            //         SizedBox(
                            //           height: 20,
                            //         ),
                            //         Row(
                            //           mainAxisAlignment:
                            //               MainAxisAlignment.center,
                            //           children: [
                            //             Container(
                            //               // color: Colors.lightBlue,
                            //               width: 360,
                            //               height: 128,
                            //               child: Row(
                            //                 children: [
                            //                   SizedBox(
                            //                       width: 70,
                            //                       height: 70,
                            //                       child: Image.asset(
                            //                           "/about/awards/iso27701.png")),
                            //                   Padding(
                            //                     padding: const EdgeInsets.only(
                            //                         top: 25, left: 10),
                            //                     child: Column(
                            //                       crossAxisAlignment:
                            //                           CrossAxisAlignment.start,
                            //                       children: [
                            //                         Text(
                            //                           "ISO/IEC 27701",
                            //                           style: GoogleFonts
                            //                               .ibmPlexSans(
                            //                                   fontSize: 20,
                            //                                   fontWeight:
                            //                                       FontWeight
                            //                                           .w700,
                            //                                   color: Color
                            //                                       .fromARGB(
                            //                                           255,
                            //                                           75,
                            //                                           196,
                            //                                           213)),
                            //                           textAlign:
                            //                               TextAlign.start,
                            //                         ),
                            //                         Text(
                            //                           "Privacy Information Management System:\nPIMS",
                            //                           style: GoogleFonts
                            //                               .ibmPlexSans(
                            //                                   fontSize: 14,
                            //                                   fontWeight:
                            //                                       FontWeight
                            //                                           .w400,
                            //                                   color:
                            //                                       Colors.black),
                            //                           textAlign:
                            //                               TextAlign.start,
                            //                         )
                            //                       ],
                            //                     ),
                            //                   )
                            //                 ],
                            //               ),
                            //             ),
                            //             Container(
                            //               width: 350,
                            //               height: 128,
                            //               // color:Color.fromARGB(255, 7, 255, 32),
                            //               child: Row(
                            //                 children: [
                            //                   SizedBox(
                            //                       width: 70,
                            //                       height: 70,
                            //                       child: Image.asset(
                            //                           "/about/awards/iso27018.png")),
                            //                   Padding(
                            //                     padding: const EdgeInsets.only(
                            //                         top: 25, left: 10),
                            //                     child: Column(
                            //                       crossAxisAlignment:
                            //                           CrossAxisAlignment.start,
                            //                       children: [
                            //                         Text(
                            //                           "ISO/IEC 27018",
                            //                           style: GoogleFonts
                            //                               .ibmPlexSans(
                            //                                   fontSize: 20,
                            //                                   fontWeight:
                            //                                       FontWeight
                            //                                           .w700,
                            //                                   color: Color
                            //                                       .fromARGB(
                            //                                           255,
                            //                                           75,
                            //                                           196,
                            //                                           213)),
                            //                           textAlign:
                            //                               TextAlign.start,
                            //                         ),
                            //                         Text(
                            //                           "Security techniques",
                            //                           style: GoogleFonts
                            //                               .ibmPlexSans(
                            //                                   fontSize: 14,
                            //                                   fontWeight:
                            //                                       FontWeight
                            //                                           .w400,
                            //                                   color:
                            //                                       Colors.black),
                            //                           textAlign:
                            //                               TextAlign.start,
                            //                         )
                            //                       ],
                            //                     ),
                            //                   )
                            //                 ],
                            //               ),
                            //             ),
                            //             Container(
                            //               // color: Colors.indigo,
                            //               width: 350,
                            //               height: 128,
                            //               child: Row(
                            //                 children: [
                            //                   SizedBox(
                            //                       width: 70,
                            //                       height: 70,
                            //                       child: Image.asset(
                            //                           "/about/awards/iso9001.png")),
                            //                   Padding(
                            //                     padding: const EdgeInsets.only(
                            //                         top: 25, left: 10),
                            //                     child: Column(
                            //                       crossAxisAlignment:
                            //                           CrossAxisAlignment.start,
                            //                       children: [
                            //                         Text(
                            //                           "ISO/IEC 9001",
                            //                           style: GoogleFonts
                            //                               .ibmPlexSans(
                            //                                   fontSize: 20,
                            //                                   fontWeight:
                            //                                       FontWeight
                            //                                           .w700,
                            //                                   color: Color
                            //                                       .fromARGB(
                            //                                           255,
                            //                                           75,
                            //                                           196,
                            //                                           213)),
                            //                           textAlign:
                            //                               TextAlign.start,
                            //                         ),
                            //                         Text(
                            //                           "Quality Management System",
                            //                           style: GoogleFonts
                            //                               .ibmPlexSans(
                            //                                   fontSize: 14,
                            //                                   fontWeight:
                            //                                       FontWeight
                            //                                           .w400,
                            //                                   color:
                            //                                       Colors.black),
                            //                           textAlign:
                            //                               TextAlign.start,
                            //                         )
                            //                       ],
                            //                     ),
                            //                   )
                            //                 ],
                            //               ),
                            //             )
                            //           ],
                            //         ),
                            //         SizedBox(
                            //           height: 20,
                            //         ),
                            //         Row(
                            //           mainAxisAlignment:
                            //               MainAxisAlignment.center,
                            //           children: [
                            //             Container(
                            //               // color: Colors.lightBlue,
                            //               width: 360,
                            //               height: 128,
                            //               child: Row(
                            //                 children: [
                            //                   SizedBox(
                            //                       width: 70,
                            //                       height: 70,
                            //                       child: Image.asset(
                            //                           "/about/awards/iso20000.png")),
                            //                   Padding(
                            //                     padding: const EdgeInsets.only(
                            //                         top: 25, left: 10),
                            //                     child: Column(
                            //                       crossAxisAlignment:
                            //                           CrossAxisAlignment.start,
                            //                       children: [
                            //                         Text(
                            //                           "ISO/IEC 20000",
                            //                           style: GoogleFonts
                            //                               .ibmPlexSans(
                            //                                   fontSize: 20,
                            //                                   fontWeight:
                            //                                       FontWeight
                            //                                           .w700,
                            //                                   color: Color
                            //                                       .fromARGB(
                            //                                           255,
                            //                                           75,
                            //                                           196,
                            //                                           213)),
                            //                           textAlign:
                            //                               TextAlign.start,
                            //                         ),
                            //                         Text(
                            //                           "Lead Auditor (Information Technology -\nService Management)",
                            //                           style: GoogleFonts
                            //                               .ibmPlexSans(
                            //                                   fontSize: 14,
                            //                                   fontWeight:
                            //                                       FontWeight
                            //                                           .w400,
                            //                                   color:
                            //                                       Colors.black),
                            //                           textAlign:
                            //                               TextAlign.start,
                            //                         )
                            //                       ],
                            //                     ),
                            //                   )
                            //                 ],
                            //               ),
                            //             ),
                            //             Container(
                            //               width: 350,
                            //               height: 128,
                            //               // color:Color.fromARGB(255, 7, 255, 32),
                            //               child: Row(
                            //                 children: [
                            //                   SizedBox(
                            //                       width: 70,
                            //                       height: 70,
                            //                       child: Image.asset(
                            //                           "/about/awards/iso22301.png")),
                            //                   Padding(
                            //                     padding: const EdgeInsets.only(
                            //                         top: 25, left: 10),
                            //                     child: Column(
                            //                       crossAxisAlignment:
                            //                           CrossAxisAlignment.start,
                            //                       children: [
                            //                         Text(
                            //                           "ISO/IEC 22301",
                            //                           style: GoogleFonts
                            //                               .ibmPlexSans(
                            //                                   fontSize: 20,
                            //                                   fontWeight:
                            //                                       FontWeight
                            //                                           .w700,
                            //                                   color: Color
                            //                                       .fromARGB(
                            //                                           255,
                            //                                           75,
                            //                                           196,
                            //                                           213)),
                            //                           textAlign:
                            //                               TextAlign.start,
                            //                         ),
                            //                         Text(
                            //                           "Business Continuity Management",
                            //                           style: GoogleFonts
                            //                               .ibmPlexSans(
                            //                                   fontSize: 14,
                            //                                   fontWeight:
                            //                                       FontWeight
                            //                                           .w400,
                            //                                   color:
                            //                                       Colors.black),
                            //                           textAlign:
                            //                               TextAlign.start,
                            //                         )
                            //                       ],
                            //                     ),
                            //                   )
                            //                 ],
                            //               ),
                            //             ),
                            //             Container(
                            //               // color: Colors.indigo,
                            //               width: 350,
                            //               height: 128,
                            //               child: Row(
                            //                 children: [
                            //                   SizedBox(
                            //                       width: 70,
                            //                       height: 70,
                            //                       child: Image.asset(
                            //                           "/about/awards/csa.png")),
                            //                   Padding(
                            //                     padding: const EdgeInsets.only(
                            //                         top: 25, left: 10),
                            //                     child: Column(
                            //                       crossAxisAlignment:
                            //                           CrossAxisAlignment.start,
                            //                       children: [
                            //                         Text(
                            //                           "CSA",
                            //                           style: GoogleFonts
                            //                               .ibmPlexSans(
                            //                                   fontSize: 20,
                            //                                   fontWeight:
                            //                                       FontWeight
                            //                                           .w700,
                            //                                   color: Color
                            //                                       .fromARGB(
                            //                                           255,
                            //                                           75,
                            //                                           196,
                            //                                           213)),
                            //                           textAlign:
                            //                               TextAlign.start,
                            //                         ),
                            //                         Text(
                            //                           "The Cloud Security Alliance",
                            //                           style: GoogleFonts
                            //                               .ibmPlexSans(
                            //                                   fontSize: 14,
                            //                                   fontWeight:
                            //                                       FontWeight
                            //                                           .w400,
                            //                                   color:
                            //                                       Colors.black),
                            //                           textAlign:
                            //                               TextAlign.start,
                            //                         )
                            //                       ],
                            //                     ),
                            //                   )
                            //                 ],
                            //               ),
                            //             )
                            //           ],
                            //         ),
                            //         SizedBox(
                            //           height: 20,
                            //         ),
                            //         Row(
                            //           mainAxisAlignment:
                            //               MainAxisAlignment.center,
                            //           children: [
                            //             Container(
                            //               // color: Colors.lightBlue,
                            //               width: 360,
                            //               height: 128,
                            //               child: Row(
                            //                 children: [
                            //                   SizedBox(
                            //                       width: 70,
                            //                       height: 70,
                            //                       child: Image.asset(
                            //                           "/about/awards/iso31000.png")),
                            //                   Padding(
                            //                     padding: const EdgeInsets.only(
                            //                         top: 25, left: 10),
                            //                     child: Column(
                            //                       crossAxisAlignment:
                            //                           CrossAxisAlignment.start,
                            //                       children: [
                            //                         Text(
                            //                           "ISO/IEC 31000",
                            //                           style: GoogleFonts
                            //                               .ibmPlexSans(
                            //                                   fontSize: 20,
                            //                                   fontWeight:
                            //                                       FontWeight
                            //                                           .w700,
                            //                                   color: Color
                            //                                       .fromARGB(
                            //                                           255,
                            //                                           75,
                            //                                           196,
                            //                                           213)),
                            //                           textAlign:
                            //                               TextAlign.start,
                            //                         ),
                            //                         Text(
                            //                           "Risk Management",
                            //                           style: GoogleFonts
                            //                               .ibmPlexSans(
                            //                                   fontSize: 14,
                            //                                   fontWeight:
                            //                                       FontWeight
                            //                                           .w400,
                            //                                   color:
                            //                                       Colors.black),
                            //                           textAlign:
                            //                               TextAlign.start,
                            //                         )
                            //                       ],
                            //                     ),
                            //                   )
                            //                 ],
                            //               ),
                            //             ),
                            //             Container(
                            //               width: 350,
                            //               height: 128,
                            //               // color:Color.fromARGB(255, 7, 255, 32),
                            //               child: Row(
                            //                 children: [
                            //                   SizedBox(
                            //                       width: 70,
                            //                       height: 70,
                            //                       child: Image.asset(
                            //                           "/about/awards/iso27005.png")),
                            //                   Padding(
                            //                     padding: const EdgeInsets.only(
                            //                         top: 25, left: 10),
                            //                     child: Column(
                            //                       crossAxisAlignment:
                            //                           CrossAxisAlignment.start,
                            //                       children: [
                            //                         Text(
                            //                           "ISO/IEC 27005",
                            //                           style: GoogleFonts
                            //                               .ibmPlexSans(
                            //                                   fontSize: 20,
                            //                                   fontWeight:
                            //                                       FontWeight
                            //                                           .w700,
                            //                                   color: Color
                            //                                       .fromARGB(
                            //                                           255,
                            //                                           75,
                            //                                           196,
                            //                                           213)),
                            //                           textAlign:
                            //                               TextAlign.start,
                            //                         ),
                            //                         Text(
                            //                           "Information Security Risk Management",
                            //                           style: GoogleFonts
                            //                               .ibmPlexSans(
                            //                                   fontSize: 14,
                            //                                   fontWeight:
                            //                                       FontWeight
                            //                                           .w400,
                            //                                   color:
                            //                                       Colors.black),
                            //                           textAlign:
                            //                               TextAlign.start,
                            //                         )
                            //                       ],
                            //                     ),
                            //                   )
                            //                 ],
                            //               ),
                            //             ),
                            //             Container(
                            //               // color: Colors.indigo,
                            //               width: 350,
                            //               height: 128,
                            //               child: Row(
                            //                 children: [
                            //                   SizedBox(
                            //                       width: 70,
                            //                       height: 70,
                            //                       child: Image.asset(
                            //                           "/about/awards/cdpo.png")),
                            //                   Padding(
                            //                     padding: const EdgeInsets.only(
                            //                         top: 25, left: 10),
                            //                     child: Column(
                            //                       crossAxisAlignment:
                            //                           CrossAxisAlignment.start,
                            //                       children: [
                            //                         Text(
                            //                           "CDPO",
                            //                           style: GoogleFonts
                            //                               .ibmPlexSans(
                            //                                   fontSize: 20,
                            //                                   fontWeight:
                            //                                       FontWeight
                            //                                           .w700,
                            //                                   color: Color
                            //                                       .fromARGB(
                            //                                           255,
                            //                                           75,
                            //                                           196,
                            //                                           213)),
                            //                           textAlign:
                            //                               TextAlign.start,
                            //                         ),
                            //                         Text(
                            //                           "Certified of Data Protection\nOfficer",
                            //                           style: GoogleFonts
                            //                               .ibmPlexSans(
                            //                                   fontSize: 14,
                            //                                   fontWeight:
                            //                                       FontWeight
                            //                                           .w400,
                            //                                   color:
                            //                                       Colors.black),
                            //                           textAlign:
                            //                               TextAlign.start,
                            //                         )
                            //                       ],
                            //                     ),
                            //                   )
                            //                 ],
                            //               ),
                            //             )
                            //           ],
                            //         ),
                            //       ],
                            //     )),
                          ]),
                    ],
                  ),
                ),
                // new Positioned(
                //     top: 500,
                //     left: 800,
                //     child: Row(
                //       children: [
                //         Padding(
                //           padding: const EdgeInsets.all(50.0),
                //           child: Container(
                //             width: 59,
                //             height: 61,
                //             decoration: BoxDecoration(
                //                 shape: BoxShape.circle,
                //                 color: Colors.transparent,
                //                 border: Border.all(
                //                     color: Color.fromARGB(255, 150, 74, 212))),
                //             child: IconButton(
                //               icon: Icon(Icons.keyboard_arrow_left,
                //                   size: 32,
                //                   color: Color.fromARGB(255, 105, 77, 216)),
                //               onPressed: () {
                //                 _controller.previousPage(
                //                   duration: Duration(milliseconds: 300),
                //                   curve: Curves.ease,
                //                 );
                //               },
                //             ),
                //           ),
                //         ),
                //         SizedBox(
                //           width: 10,
                //         ),
                //         Padding(
                //           padding: const EdgeInsets.all(50.0),
                //           child: Container(
                //             width: 59,
                //             height: 61,
                //             decoration: BoxDecoration(
                //                 shape: BoxShape.circle,
                //                 color: Colors.transparent,
                //                 border: Border.all(
                //                     color: Color.fromARGB(255, 203, 74, 212))),
                //             child: IconButton(
                //               icon: Icon(Icons.keyboard_arrow_right,
                //                   size: 32,
                //                   color: Color.fromARGB(255, 105, 77, 216)),
                //               onPressed: () {
                //                 _controller.nextPage(
                //                   duration: Duration(milliseconds: 300),
                //                   curve: Curves.ease,
                //                 );
                //               },
                //             ),
                //           ),
                //         ),
                //       ],
                //     ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}

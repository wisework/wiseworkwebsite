import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/responsive.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AwardsPage extends StatefulWidget {
  @override
  _AwardsState createState() => _AwardsState();
}

class Awards {
  final String imageUrl;
  final String title;
  final String description;

  Awards(this.imageUrl, this.title, this.description);
}

class _AwardsState extends State<AwardsPage> {
  CarouselController _controller = CarouselController();
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Responsive.isDesktop(context)
            ? Container(
                width: 1440,
                // height: 1010,
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
                          padding: const EdgeInsets.only(top: 70, left: 72),
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
                    Padding(
                      padding: const EdgeInsets.only(left: 80, top: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // color: Colors.lightBlue,
                            width: 460,
                            height: 128,
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 100,
                                    height: 100,
                                    child: Image.asset(
                                        "/about/awards/iso27001.png")),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 25, left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "ISO/IEC 27001",
                                        style: GoogleFonts.ibmPlexSans(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w700,
                                            color: Color.fromARGB(
                                                255, 75, 196, 213)),
                                        textAlign: TextAlign.start,
                                      ),
                                      Text(
                                        "Information Security Management \nSystem:ISMS ",
                                        style: GoogleFonts.ibmPlexSans(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                        textAlign: TextAlign.start,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 460,
                            height: 128,
                            // color:Color.fromARGB(255, 7, 255, 32),
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 100,
                                    height: 100,
                                    child: Image.asset(
                                        "/about/awards/iso27017.png")),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 25, left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "ISO/IEC 27017",
                                        style: GoogleFonts.ibmPlexSans(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w700,
                                            color: Color.fromARGB(
                                                255, 75, 196, 213)),
                                        textAlign: TextAlign.start,
                                      ),
                                      Text(
                                        "Information technology",
                                        style: GoogleFonts.ibmPlexSans(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                        textAlign: TextAlign.start,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            // color: Colors.indigo,
                            width: 400,
                            height: 128,
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 100,
                                    height: 100,
                                    child:
                                        Image.asset("/about/awards/coso.png")),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 25, left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "COSO-ERM",
                                        style: GoogleFonts.ibmPlexSans(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w700,
                                            color: Color.fromARGB(
                                                255, 75, 196, 213)),
                                        textAlign: TextAlign.start,
                                      ),
                                      Text(
                                        "Enterprise Risk Management ",
                                        style: GoogleFonts.ibmPlexSans(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                        textAlign: TextAlign.start,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            // color: Colors.lightBlue,
                            width: 460,
                            height: 128,
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 100,
                                    height: 100,
                                    child: Image.asset(
                                        "/about/awards/iso27701.png")),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 25, left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "ISO/IEC 27701",
                                        style: GoogleFonts.ibmPlexSans(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w700,
                                            color: Color.fromARGB(
                                                255, 75, 196, 213)),
                                        textAlign: TextAlign.start,
                                      ),
                                      Text(
                                        "Privacy Information Management\nSystem:PIMS",
                                        style: GoogleFonts.ibmPlexSans(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                        textAlign: TextAlign.start,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 460,
                            height: 128,
                            // color:Color.fromARGB(255, 7, 255, 32),
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 100,
                                    height: 100,
                                    child: Image.asset(
                                        "/about/awards/iso27018.png")),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 25, left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "ISO/IEC 27018",
                                        style: GoogleFonts.ibmPlexSans(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w700,
                                            color: Color.fromARGB(
                                                255, 75, 196, 213)),
                                        textAlign: TextAlign.start,
                                      ),
                                      Text(
                                        "Security techniques",
                                        style: GoogleFonts.ibmPlexSans(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                        textAlign: TextAlign.start,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            // color: Colors.indigo,
                            width: 400,
                            height: 128,
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 100,
                                    height: 100,
                                    child: Image.asset(
                                        "/about/awards/iso9001.png")),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 25, left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "ISO/IEC 9001",
                                        style: GoogleFonts.ibmPlexSans(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w700,
                                            color: Color.fromARGB(
                                                255, 75, 196, 213)),
                                        textAlign: TextAlign.start,
                                      ),
                                      Text(
                                        "Quality Management System",
                                        style: GoogleFonts.ibmPlexSans(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                        textAlign: TextAlign.start,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            // color: Colors.lightBlue,
                            width: 460,
                            height: 128,
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 100,
                                    height: 100,
                                    child: Image.asset(
                                        "/about/awards/iso20000.png")),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 25, left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "ISO/IEC 20000",
                                        style: GoogleFonts.ibmPlexSans(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w700,
                                            color: Color.fromARGB(
                                                255, 75, 196, 213)),
                                        textAlign: TextAlign.start,
                                      ),
                                      Text(
                                        "Lead Auditor (Information Technology\nService Management)",
                                        style: GoogleFonts.ibmPlexSans(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                        textAlign: TextAlign.start,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 460,
                            height: 128,
                            // color:Color.fromARGB(255, 7, 255, 32),
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 100,
                                    height: 100,
                                    child: Image.asset(
                                        "/about/awards/iso22301.png")),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 25, left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "ISO/IEC 22301",
                                        style: GoogleFonts.ibmPlexSans(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w700,
                                            color: Color.fromARGB(
                                                255, 75, 196, 213)),
                                        textAlign: TextAlign.start,
                                      ),
                                      Text(
                                        "Business Continuity Management",
                                        style: GoogleFonts.ibmPlexSans(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                        textAlign: TextAlign.start,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            // color: Colors.indigo,
                            width: 400,
                            height: 128,
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 100,
                                    height: 100,
                                    child:
                                        Image.asset("/about/awards/csa.png")),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 25, left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "CSA",
                                        style: GoogleFonts.ibmPlexSans(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w700,
                                            color: Color.fromARGB(
                                                255, 75, 196, 213)),
                                        textAlign: TextAlign.start,
                                      ),
                                      Text(
                                        "The Cloud Security Alliance",
                                        style: GoogleFonts.ibmPlexSans(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                        textAlign: TextAlign.start,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            // color: Colors.lightBlue,
                            width: 460,
                            height: 128,
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 100,
                                    height: 100,
                                    child: Image.asset(
                                        "/about/awards/iso31000.png")),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 25, left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "ISO/IEC 31000",
                                        style: GoogleFonts.ibmPlexSans(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w700,
                                            color: Color.fromARGB(
                                                255, 75, 196, 213)),
                                        textAlign: TextAlign.start,
                                      ),
                                      Text(
                                        "Risk Management",
                                        style: GoogleFonts.ibmPlexSans(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                        textAlign: TextAlign.start,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 460,
                            height: 128,
                            // color:Color.fromARGB(255, 7, 255, 32),
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 100,
                                    height: 100,
                                    child: Image.asset(
                                        "/about/awards/iso27005.png")),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 25, left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "ISO/IEC 27005",
                                        style: GoogleFonts.ibmPlexSans(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w700,
                                            color: Color.fromARGB(
                                                255, 75, 196, 213)),
                                        textAlign: TextAlign.start,
                                      ),
                                      Text(
                                        "Information Security Risk Management",
                                        style: GoogleFonts.ibmPlexSans(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                        textAlign: TextAlign.start,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            // color: Colors.indigo,
                            width: 400,
                            height: 128,
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 100,
                                    height: 100,
                                    child:
                                        Image.asset("/about/awards/cdpo.png")),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 25, left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "CDPO",
                                        style: GoogleFonts.ibmPlexSans(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w700,
                                            color: Color.fromARGB(
                                                255, 75, 196, 213)),
                                        textAlign: TextAlign.start,
                                      ),
                                      Text(
                                        "Certified of Data Protection Officer",
                                        style: GoogleFonts.ibmPlexSans(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                        textAlign: TextAlign.start,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    )
                  ],
                ),
              )
            : Responsive.isTablet(context)
                ? Container(
                    color: Colors.white,
                    width: 768,
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 52, left: 72),
                              child: Container(
                                width: 305,
                                // height: 150,
                                // color: Colors.amber,
                                child: Text(
                                  "Awards&\nAchievement",
                                  style: GoogleFonts.ibmPlexSans(
                                      fontSize: 36,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromARGB(255, 5, 45, 97)),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 72),
                              child: Container(
                                width: 700,
                                // height: 110,
                                // color: Colors.amber,
                                child: Text(
                                  "การันตีความเชี่ยวชาญด้วยทีมที่ปรึกษาด้านกฎหมาย และนักพัฒนา\nมากประสบการณ์ที่ผ่านการฝึกอบรม และได้รับรองมาตรฐานระดับสากล",
                                  style: GoogleFonts.ibmPlexSansThai(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Container(
                                  // color: Colors.lightBlue,
                                  width: 380,
                                  height: 128,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                          width: 100,
                                          height: 100,
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
                                              style: GoogleFonts.ibmPlexSans(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w700,
                                                  color: Color.fromARGB(
                                                      255, 75, 196, 213)),
                                              textAlign: TextAlign.start,
                                            ),
                                            Text(
                                              "Information Security\nManagement System:ISMS ",
                                              style: GoogleFonts.ibmPlexSans(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black),
                                              textAlign: TextAlign.start,
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 330,
                                height: 128,
                                // color:Color.fromARGB(255, 7, 255, 32),
                                child: Row(
                                  children: [
                                    SizedBox(
                                        width: 100,
                                        height: 100,
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
                                            style: GoogleFonts.ibmPlexSans(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700,
                                                color: Color.fromARGB(
                                                    255, 75, 196, 213)),
                                            textAlign: TextAlign.start,
                                          ),
                                          Text(
                                            "Information technology",
                                            style: GoogleFonts.ibmPlexSans(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black),
                                            textAlign: TextAlign.start,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Container(
                                  // color: Colors.lightBlue,
                                  width: 380,
                                  height: 128,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                          width: 100,
                                          height: 100,
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
                                              style: GoogleFonts.ibmPlexSans(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w700,
                                                  color: Color.fromARGB(
                                                      255, 75, 196, 213)),
                                              textAlign: TextAlign.start,
                                            ),
                                            Text(
                                              "Enterprise Risk\nManagement",
                                              style: GoogleFonts.ibmPlexSans(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black),
                                              textAlign: TextAlign.start,
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 330,
                                height: 128,
                                // color:Color.fromARGB(255, 7, 255, 32),
                                child: Row(
                                  children: [
                                    SizedBox(
                                        width: 100,
                                        height: 100,
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
                                            style: GoogleFonts.ibmPlexSans(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700,
                                                color: Color.fromARGB(
                                                    255, 75, 196, 213)),
                                            textAlign: TextAlign.start,
                                          ),
                                          Text(
                                            "IPrivacy Information\nManagement System:PIMS",
                                            style: GoogleFonts.ibmPlexSans(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black),
                                            textAlign: TextAlign.start,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Container(
                                  // color: Colors.lightBlue,
                                  width: 380,
                                  height: 128,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                          width: 100,
                                          height: 100,
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
                                              style: GoogleFonts.ibmPlexSans(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w700,
                                                  color: Color.fromARGB(
                                                      255, 75, 196, 213)),
                                              textAlign: TextAlign.start,
                                            ),
                                            Text(
                                              "Security techniques",
                                              style: GoogleFonts.ibmPlexSans(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black),
                                              textAlign: TextAlign.start,
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 330,
                                height: 128,
                                // color:Color.fromARGB(255, 7, 255, 32),
                                child: Row(
                                  children: [
                                    SizedBox(
                                        width: 100,
                                        height: 100,
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
                                            style: GoogleFonts.ibmPlexSans(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700,
                                                color: Color.fromARGB(
                                                    255, 75, 196, 213)),
                                            textAlign: TextAlign.start,
                                          ),
                                          Text(
                                            "Quality Management System",
                                            style: GoogleFonts.ibmPlexSans(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black),
                                            textAlign: TextAlign.start,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Container(
                                  // color: Colors.lightBlue,
                                  width: 380,
                                  height: 128,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                          width: 100,
                                          height: 100,
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
                                              style: GoogleFonts.ibmPlexSans(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w700,
                                                  color: Color.fromARGB(
                                                      255, 75, 196, 213)),
                                              textAlign: TextAlign.start,
                                            ),
                                            Text(
                                              "Lead Auditor (Information\nTechnology Service Management)",
                                              style: GoogleFonts.ibmPlexSans(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black),
                                              textAlign: TextAlign.start,
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 330,
                                height: 128,
                                // color:Color.fromARGB(255, 7, 255, 32),
                                child: Row(
                                  children: [
                                    SizedBox(
                                        width: 100,
                                        height: 100,
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
                                            style: GoogleFonts.ibmPlexSans(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700,
                                                color: Color.fromARGB(
                                                    255, 75, 196, 213)),
                                            textAlign: TextAlign.start,
                                          ),
                                          Text(
                                            "Business Continuity\nManagement",
                                            style: GoogleFonts.ibmPlexSans(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black),
                                            textAlign: TextAlign.start,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Container(
                                  // color: Colors.lightBlue,
                                  width: 380,
                                  height: 128,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                          width: 100,
                                          height: 100,
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
                                              style: GoogleFonts.ibmPlexSans(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w700,
                                                  color: Color.fromARGB(
                                                      255, 75, 196, 213)),
                                              textAlign: TextAlign.start,
                                            ),
                                            Text(
                                              "The Cloud Security Alliance",
                                              style: GoogleFonts.ibmPlexSans(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black),
                                              textAlign: TextAlign.start,
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 330,
                                height: 128,
                                // color:Color.fromARGB(255, 7, 255, 32),
                                child: Row(
                                  children: [
                                    SizedBox(
                                        width: 100,
                                        height: 100,
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
                                            style: GoogleFonts.ibmPlexSans(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700,
                                                color: Color.fromARGB(
                                                    255, 75, 196, 213)),
                                            textAlign: TextAlign.start,
                                          ),
                                          Text(
                                            "Risk Management",
                                            style: GoogleFonts.ibmPlexSans(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black),
                                            textAlign: TextAlign.start,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Container(
                                  // color: Colors.lightBlue,
                                  width: 380,
                                  height: 128,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                          width: 100,
                                          height: 100,
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
                                              style: GoogleFonts.ibmPlexSans(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w700,
                                                  color: Color.fromARGB(
                                                      255, 75, 196, 213)),
                                              textAlign: TextAlign.start,
                                            ),
                                            Text(
                                              "Information Security\nRisk Management",
                                              style: GoogleFonts.ibmPlexSans(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black),
                                              textAlign: TextAlign.start,
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 330,
                                height: 128,
                                // color:Color.fromARGB(255, 7, 255, 32),
                                child: Row(
                                  children: [
                                    SizedBox(
                                        width: 100,
                                        height: 100,
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
                                            style: GoogleFonts.ibmPlexSans(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700,
                                                color: Color.fromARGB(
                                                    255, 75, 196, 213)),
                                            textAlign: TextAlign.start,
                                          ),
                                          Text(
                                            "Certified of Data Protection\nOfficer",
                                            style: GoogleFonts.ibmPlexSans(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black),
                                            textAlign: TextAlign.start,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                  )
                : Container());
  }
}

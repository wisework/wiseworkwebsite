import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/responsive.dart';

class PdpaModel {
  final String title;
  final String description;
  PdpaModel(this.title, this.description);
}

class Pdpa extends StatefulWidget {
  const Pdpa({Key? key}) : super(key: key);

  @override
  State<Pdpa> createState() => _PdpaState();
}

class _PdpaState extends State<Pdpa> {
  List<PdpaModel> models = [
    PdpaModel("Privacy protection",
        "ถูกต้องตามพ.ร.บ.คุ้มครองข้อมูลส่วนบุคคล ครบถ้วนทั้งองค์กร"),
    PdpaModel("security intelligence",
        "Features ใช้งานง่าย ครอบคลุมทั้งระบบ จัดเก็บ เผยแพร่ ประมวลผล และตรวจสอบ"),
    PdpaModel("Best Design solution",
        "วางแผนให้คำปรึกษา เติมเต็มให้ครบทั้ง People, Process และ Technology")
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Responsive.isDesktop(context)
              ? Container(
                  width: 1440,
                  color: Color.fromARGB(255, 232, 242, 254),
                  child: Container(
                    child: Center(
                      child: Container(
                        width: 1440,
                        height: 1163,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 67.9, bottom: 41.1),
                              child: SizedBox(
                                height: 79,
                                width: 1260,
                                child: Text(
                                  "wisework PDPA Management Platform",
                                  style: GoogleFonts.ibmPlexSansThai(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 48,
                                      color: Color.fromARGB(255, 5, 45, 97)),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 138,
                              width: 954,
                              child: Text(
                                'ผลิตภัณฑ์ที่ถูกคิดค้นและพัฒนาจาก ประสบการณ์ของทีมผู้ให้คำปรึกษามามากกว่า 50+ โครงการ พร้อมให้คำปรึกษา วางแผน และวางระบบตามกฎหมาย สำหรับองค์กรและธุรกิจต่างๆเติมเต็มให้ครบทั้ง People Process และ Technology มั่นใจได้ว่า เป็นไปตามที่กฎหมายกำหนด',
                                style: GoogleFonts.ibmPlexSansThai(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 24,
                                    color: Color.fromARGB(255, 31, 40, 79)),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 40.3, bottom: 61),
                              child: SizedBox(
                                height: 629.7,
                                width: 819,
                                child: Image.asset("/pdpa/pdpa.png"),
                              ),
                            ),
                            SizedBox(
                              height: 48,
                              width: 193,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 75, 195, 211),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(30.0)),
                                ),
                                child: Text(
                                  'ดูรายละเอียด',
                                  style: GoogleFonts.ibmPlexSansThai(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ))
              : Responsive.isTablet(context)
                  ? Container(
                      // height: 10,
                      width: 770,
                      color: Color.fromARGB(255, 232, 242, 254),
                      child: Container(
                        child: Center(
                          child: Container(
                            width: 770,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 89, right: 89, top: 72),
                                  child: SizedBox(
                                    height: 108,
                                    width: 590,
                                    child: Text(
                                      "wisework PDPA \n Management Platform",
                                      style: GoogleFonts.ibmPlexSansThai(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 36,
                                          color:
                                              Color.fromARGB(255, 5, 45, 97)),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 39, right: 40),
                                  child: Container(
                                    height: 569,
                                    width: 689,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 39, left: 59, right: 56),
                                              child: Container(
                                                height: 96,
                                                width: 574,
                                                child: Text(
                                                  "ผลิตภัณฑ์ที่ถูกคิดค้นและพัฒนาจาก ประสบการณ์ของทีมผู้ให้คำปรึกษา \n มามากกว่า 50+ โครงการ พร้อมให้คำปรึกษา วางแผน และวางระบบตามกฎหมาย \n สำหรับองค์กรและธุรกิจต่างๆ มั่นใจได้ว่าเป็นไปตามที่กฎหมายกำหนด",
                                                  style:
                                                      GoogleFonts.josefinSans(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 18,
                                                    color: Color.fromARGB(
                                                        255, 31, 40, 79),
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10),
                                                  child: SizedBox(
                                                    height: 359,
                                                    width: 238,
                                                    child: Image.asset(
                                                        "/pdpa/mobile.png"),
                                                  ),
                                                )
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    left: 60,
                                                  ),
                                                  child: Container(
                                                    width: 350,
                                                    height: 110,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        color: Colors.white),
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Wrap(children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        top: 18,
                                                                        left:
                                                                            19),
                                                                child: SizedBox(
                                                                  height: 24,
                                                                  width: 24,
                                                                  child: Image
                                                                      .asset(
                                                                          "/pdpa/check.png"),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            18,
                                                                        top: 18,
                                                                        right:
                                                                            64),
                                                                child:
                                                                    Container(
                                                                  height: 30,
                                                                  width: 218,
                                                                  // color: Colors.amber,
                                                                  child: Text(
                                                                    "PRIVACY PROTECTION",
                                                                    style: GoogleFonts.poppins(
                                                                        color: Color.fromARGB(
                                                                            255,
                                                                            35,
                                                                            34,
                                                                            51),
                                                                        fontSize:
                                                                            20,
                                                                        fontWeight:
                                                                            FontWeight.w600),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                  ),
                                                                ),
                                                              ),
                                                            ]),
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 61,
                                                                  right: 16),
                                                          child: Container(
                                                            width: 266,
                                                            height: 49,
                                                            // color: Colors.red,
                                                            child: Text(
                                                              "ถูกต้องตามพ.ร.บ.คุ้มครองข้อมูลส่วนบุคคล ครบถ้วนทั้งองค์กร",
                                                              style: GoogleFonts.ibmPlexSansThai(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          108,
                                                                          108,
                                                                          114),
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    left: 60,
                                                  ),
                                                  child: Container(
                                                    width: 350,
                                                    height: 110,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        color: Colors.white),
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Wrap(children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        top: 18,
                                                                        left:
                                                                            19),
                                                                child: SizedBox(
                                                                  height: 24,
                                                                  width: 24,
                                                                  child: Image
                                                                      .asset(
                                                                          "/pdpa/check.png"),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            18,
                                                                        top: 18,
                                                                        right:
                                                                            64),
                                                                child:
                                                                    Container(
                                                                  height: 30,
                                                                  width: 218,
                                                                  // color: Colors.amber,
                                                                  child: Text(
                                                                    "SECURITY INTELLIGENCE",
                                                                    style: GoogleFonts.poppins(
                                                                        color: Color.fromARGB(
                                                                            255,
                                                                            35,
                                                                            34,
                                                                            51),
                                                                        fontSize:
                                                                            20,
                                                                        fontWeight:
                                                                            FontWeight.w600),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                  ),
                                                                ),
                                                              ),
                                                            ]),
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 61,
                                                                  right: 16),
                                                          child: Container(
                                                            width: 266,
                                                            height: 49,
                                                            // color: Colors.red,
                                                            child: Text(
                                                              "Features ใช้งานง่าย ครอบคลุมทั้งระบบ จัดเก็บ เผยแพร่ ประมวลผล และตรวจสอบ",
                                                              style: GoogleFonts.ibmPlexSansThai(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          108,
                                                                          108,
                                                                          114),
                                                                  fontSize: 15,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    left: 60,
                                                  ),
                                                  child: Container(
                                                    width: 350,
                                                    height: 110,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        color: Colors.white),
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Wrap(children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        top: 18,
                                                                        left:
                                                                            19),
                                                                child: SizedBox(
                                                                  height: 24,
                                                                  width: 24,
                                                                  child: Image
                                                                      .asset(
                                                                          "/pdpa/check.png"),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            18,
                                                                        top: 18,
                                                                        right:
                                                                            64),
                                                                child:
                                                                    Container(
                                                                  height: 30,
                                                                  width: 218,
                                                                  // color: Colors.amber,
                                                                  child: Text(
                                                                    "BEST DESIGN SOLUTION",
                                                                    style: GoogleFonts.poppins(
                                                                        color: Color.fromARGB(
                                                                            255,
                                                                            35,
                                                                            34,
                                                                            51),
                                                                        fontSize:
                                                                            20,
                                                                        fontWeight:
                                                                            FontWeight.w600),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                  ),
                                                                ),
                                                              ),
                                                            ]),
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 61,
                                                                  right: 16),
                                                          child: Container(
                                                            width: 266,
                                                            height: 49,
                                                            // color: Colors.red,
                                                            child: Text(
                                                              "วางแผนให้คำปรึกษา เติมเต็มให้ครบทั้ง People, Process และ Technology",
                                                              style: GoogleFonts.ibmPlexSansThai(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          108,
                                                                          108,
                                                                          114),
                                                                  fontSize: 15,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  : Container(
                      width: 500,
                      color: Color.fromARGB(255, 232, 242, 254),
                      child: Container(
                        child: Center(
                          child: Container(
                            width: 375,
                            height: 1120,
                            // height: 8869,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 28, bottom: 31, top: 32),
                                  child: SizedBox(
                                    height: 70,
                                    width: 327,
                                    child: Text(
                                      "wisework PDPA Management Platform",
                                      style: GoogleFonts.ibmPlexSansThai(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 24,
                                          color:
                                              Color.fromARGB(255, 5, 45, 97)),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 194,
                                  width: 300,
                                  child: Text(
                                    'ผลิตภัณฑ์ที่ถูกคิดค้นและพัฒนาจาก ประสบการณ์ของทีมผู้ให้คำปรึกษามามากกว่า 50+ โครงการ พร้อมให้คำปรึกษา วางแผน และวางระบบตามกฎหมาย สำหรับองค์กรและธุรกิจต่างๆมั่นใจได้ว่า เป็นไปตามที่กฎหมายกำหนด',
                                    style: GoogleFonts.ibmPlexSansThai(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                        color: Color.fromARGB(255, 31, 40, 79)),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 53, right: 52),
                                  child: SizedBox(
                                    height: 359,
                                    width: 238,
                                    child: Image.asset("/pdpa/mobile.png"),
                                  ),
                                ),
                                Container(
                                  width: 343,
                                  height: 110,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Wrap(children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 18, left: 19),
                                              child: SizedBox(
                                                height: 24,
                                                width: 24,
                                                child: Image.asset(
                                                    "/pdpa/check.png"),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 18, top: 18, right: 64),
                                              child: Container(
                                                height: 30,
                                                width: 218,
                                                // color: Colors.amber,
                                                child: Text(
                                                  "PRIVACY PROTECTION",
                                                  style: GoogleFonts.poppins(
                                                      color: Color.fromARGB(
                                                          255, 35, 34, 51),
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                  textAlign: TextAlign.start,
                                                ),
                                              ),
                                            ),
                                          ]),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 61, right: 16),
                                        child: Container(
                                          width: 266,
                                          height: 49,
                                          // color: Colors.red,
                                          child: Text(
                                            "ถูกต้องตามพ.ร.บ.คุ้มครองข้อมูลส่วนบุคคล ครบถ้วนทั้งองค์กร",
                                            style: GoogleFonts.ibmPlexSansThai(
                                                color: Color.fromARGB(
                                                    255, 108, 108, 114),
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400),
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: 343,
                                  height: 110,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Wrap(children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 18, left: 19),
                                              child: SizedBox(
                                                height: 24,
                                                width: 24,
                                                child: Image.asset(
                                                    "/pdpa/check.png"),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 19,
                                                top: 18,
                                              ),
                                              child: Container(
                                                height: 30,
                                                width: 233,
                                                // color: Colors.amber,
                                                child: Text(
                                                  "SECURITY INTELLIGENCE",
                                                  style: GoogleFonts.poppins(
                                                      color: Color.fromARGB(
                                                          255, 35, 34, 51),
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                  textAlign: TextAlign.start,
                                                ),
                                              ),
                                            ),
                                          ]),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 61, right: 16),
                                        child: Container(
                                          width: 266,
                                          height: 49,
                                          // color: Colors.red,
                                          child: Text(
                                            "Features ใช้งานง่าย ครอบคลุมทั้งระบบ จัดเก็บ เผยแพร่ ประมวลผล และตรวจสอบ",
                                            style: GoogleFonts.ibmPlexSansThai(
                                                color: Color.fromARGB(
                                                    255, 108, 108, 114),
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400),
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: 344,
                                  height: 110,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Wrap(children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 18, left: 19),
                                              child: SizedBox(
                                                height: 24,
                                                width: 24,
                                                child: Image.asset(
                                                    "/pdpa/check.png"),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 19, top: 18, right: 53),
                                              child: Container(
                                                height: 30,
                                                width: 229,
                                                // color: Colors.amber,
                                                child: Text(
                                                  "BEST DESIGN SOLUTION",
                                                  style: GoogleFonts.poppins(
                                                      color: Color.fromARGB(
                                                          255, 35, 34, 51),
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                  textAlign: TextAlign.start,
                                                ),
                                              ),
                                            ),
                                          ]),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 61, right: 16),
                                        child: Container(
                                          width: 266,
                                          height: 49,
                                          // color: Colors.red,
                                          child: Text(
                                            "วางแผนให้คำปรึกษา เติมเต็มให้ครบทั้ง People, Process และ Technology",
                                            style: GoogleFonts.ibmPlexSansThai(
                                                color: Color.fromARGB(
                                                    255, 108, 108, 114),
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400),
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ))
        ],
      ),
    );
  }
}

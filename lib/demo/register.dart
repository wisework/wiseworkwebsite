import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/responsive.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Register extends StatefulWidget {
  @override
  _Register createState() => _Register();
}

class _Register extends State<Register> {
  final List<String> optionsItem = [
    "option 1",
    "option 2",
    "option 3",
  ];

  final List<String> packageItem = [
    "package 1",
    "package 2",
    "package 3",
  ];

  String? selectedOption;
  String? selectedPackage;
  bool? hover;

  CarouselController _controller = CarouselController();
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Responsive.isDesktop(context)
            ? Container(
                width: 1440,
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        width: 1440,
                        // height: 1614,
                        color: Color.fromARGB(255, 232, 242, 254),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 1614,
                                  // color: Colors.amber,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 139, left: 52),
                                        child: Container(
                                            // color: Colors.red,
                                            width: 70,
                                            // height: 103,
                                            child:
                                                Image.asset("/demo/dot.png")),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 77, left: 78),
                                        child: Text(
                                          "ทดลองใช้งานฟรี",
                                          style: GoogleFonts.ibmPlexSans(
                                              fontSize: 48,
                                              fontWeight: FontWeight.w600,
                                              color: Color.fromARGB(
                                                  255, 23, 49, 90)),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 21, left: 78),
                                        child: Text(
                                          "สัมผัสประสบการณ์ใหม่ของการจัดการข้อมูลส่วนตัว\nที่แตกต่างอย่างเป็นระบบ ทดลองใช้งานโปรแกรม\nPDPA Management Platform ได้แล้ววันนี้เพียง",
                                          style: GoogleFonts.ibmPlexSans(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromARGB(
                                                  255, 83, 104, 106)),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(left: 70),
                                          child: TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              "คลิกลงทะเบียน",
                                              style: GoogleFonts.ibmPlexSans(
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color.fromARGB(
                                                      255, 75, 196, 213)),
                                              textAlign: TextAlign.start,
                                            ),
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 48, left: 78),
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text:
                                                    'โปรแกรมจัดการข้อมูลส่วนบุคคล',
                                                style:
                                                    GoogleFonts.ibmPlexSansThai(
                                                  fontSize: 36,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              TextSpan(
                                                text: '\nwisework',
                                                style:
                                                    GoogleFonts.ibmPlexSansThai(
                                                  fontSize: 36,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color.fromARGB(
                                                      255, 52, 145, 206),
                                                ),
                                              ),
                                              TextSpan(
                                                text: ' ตัวช่วยสำหรับธุรกิจคุณ',
                                                style:
                                                    GoogleFonts.ibmPlexSansThai(
                                                  fontSize: 36,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color.fromARGB(
                                                      255, 23, 49, 90),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 71,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 700,
                                              height: 425,
                                              // color: Colors.purple,
                                              color: Color.fromARGB(
                                                  0, 250, 251, 252),
                                              child: Column(
                                                // mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  CarouselSlider(
                                                    carouselController:
                                                        _controller,
                                                    options: CarouselOptions(
                                                      // viewportFraction: 0.876,
                                                      height: 425,
                                                      // enlargeCenterPage: true,
                                                      autoPlay: true,
                                                      onPageChanged:
                                                          (index, reason) {
                                                        setState(() {
                                                          _current = index;
                                                          // print('Current Page: $_current');
                                                        });
                                                      },
                                                    ),
                                                    items: [
                                                      Stack(
                                                        children: [
                                                          SizedBox(
                                                              width: 523,
                                                              height: 425,
                                                              child: Image.asset(
                                                                  "/demo/pic1.png")),
                                                          new Positioned(
                                                            top: 169,
                                                            left: 14,
                                                            child: Text(
                                                              "ลดความยุ่งยาก\nจากการทำงานที่ซ้ำซ้อน",
                                                              style: GoogleFonts.poppins(
                                                                  fontSize: 24,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Colors
                                                                      .white),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      Stack(
                                                        children: [
                                                          SizedBox(
                                                              width: 523,
                                                              height: 425,
                                                              child: Image.asset(
                                                                  "/demo/pic2.png")),
                                                          new Positioned(
                                                            top: 195,
                                                            left: 120,
                                                            child: Text(
                                                              "ประหยัดเวลาในการทำงาน",
                                                              style: GoogleFonts.poppins(
                                                                  fontSize: 24,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Colors
                                                                      .white),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      Stack(
                                                        children: [
                                                          SizedBox(
                                                              width: 523,
                                                              height: 425,
                                                              child: Image.asset(
                                                                  "/demo/pic3.png")),
                                                          new Positioned(
                                                            top: 187,
                                                            left: 236,
                                                            child: Text(
                                                              "ลดภาระของ\nData Protection Officer",
                                                              style: GoogleFonts.poppins(
                                                                  fontSize: 24,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Colors
                                                                      .white),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                            ),
                                                          )
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 50),
                                              child: Container(
                                                child: AnimatedSmoothIndicator(
                                                    activeIndex: _current,
                                                    count: 3,
                                                    effect: ScaleEffect(
                                                        activePaintStyle:
                                                            PaintingStyle
                                                                .stroke,
                                                        scale: 1.4,
                                                        activeStrokeWidth: 1.0,
                                                        dotWidth: 16,
                                                        dotHeight: 16,
                                                        dotColor:
                                                            Color.fromARGB(
                                                                255,
                                                                137,
                                                                141,
                                                                149))),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 726,
                                  height: 1364,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(40)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 68, left: 25),
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'สมัครใช้งานฟรี',
                                                style:
                                                    GoogleFonts.ibmPlexSansThai(
                                                  fontSize: 48,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              TextSpan(
                                                text: ' ไม่มีค่าใช้จ่าย',
                                                style:
                                                    GoogleFonts.ibmPlexSansThai(
                                                  fontSize: 48,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color.fromARGB(
                                                      255, 52, 145, 206),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 36, left: 25),
                                        child: Text(
                                          "ทดลองใช้งาน 7 วัน ไม่มีข้อมูลผูกมัดใดๆ",
                                          style: GoogleFonts.ibmPlexSansThai(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 36),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 25),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Wrap(
                                                    children: [
                                                      Container(
                                                        // width: 310,
                                                        child: Text(
                                                          "ชื่อ-นามสกุล",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .black),
                                                        ),
                                                      ),
                                                      Container(
                                                        // width: 310,
                                                        child: Text(
                                                          "*",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          52,
                                                                          145,
                                                                          206)),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Container(
                                                    width: 310,
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                        hintText: 'wisework',
                                                        hintStyle:
                                                            GoogleFonts.poppins(
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        232,
                                                                        242,
                                                                        254)),
                                                        contentPadding:
                                                            EdgeInsets.fromLTRB(
                                                                0, 20, 0, 0),
                                                        border:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          52,
                                                                          145,
                                                                          206)),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 32),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Wrap(
                                                    children: [
                                                      Container(
                                                        child: Text(
                                                          "ชื่อบริษัท",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .black),
                                                        ),
                                                      ),
                                                      Container(
                                                        // width: 310,
                                                        child: Text(
                                                          "*",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          52,
                                                                          145,
                                                                          206)),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Container(
                                                    width: 310,
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                        hintText:
                                                            'The wisework co.,Ltd.',
                                                        hintStyle:
                                                            GoogleFonts.poppins(
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        232,
                                                                        242,
                                                                        254)),
                                                        contentPadding:
                                                            EdgeInsets.fromLTRB(
                                                                0, 20, 0, 0),
                                                        border:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          52,
                                                                          145,
                                                                          206)),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 64),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 25),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Wrap(
                                                    children: [
                                                      Container(
                                                        // width: 310,
                                                        child: Text(
                                                          "อีเมล",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .black),
                                                        ),
                                                      ),
                                                      Container(
                                                        // width: 310,
                                                        child: Text(
                                                          "*",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          52,
                                                                          145,
                                                                          206)),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Container(
                                                    width: 310,
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                        hintText:
                                                            'hello@thewiseworks.com',
                                                        hintStyle:
                                                            GoogleFonts.poppins(
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        232,
                                                                        242,
                                                                        254)),
                                                        contentPadding:
                                                            EdgeInsets.fromLTRB(
                                                                0, 20, 0, 0),
                                                        border:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          52,
                                                                          145,
                                                                          206)),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 32),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Wrap(
                                                    children: [
                                                      Container(
                                                        child: Text(
                                                          "เบอร์โทรศัพท์",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .black),
                                                        ),
                                                      ),
                                                      Container(
                                                        // width: 310,
                                                        child: Text(
                                                          "*",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          52,
                                                                          145,
                                                                          206)),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Container(
                                                    width: 310,
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                        hintText:
                                                            'xxx-xxx-xxxx',
                                                        hintStyle:
                                                            GoogleFonts.poppins(
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        232,
                                                                        242,
                                                                        254)),
                                                        contentPadding:
                                                            EdgeInsets.fromLTRB(
                                                                0, 20, 0, 0),
                                                        border:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          52,
                                                                          145,
                                                                          206)),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 64),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 25),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Wrap(
                                                    children: [
                                                      Container(
                                                        // width: 310,
                                                        child: Text(
                                                          "จำนวนผู้ใช้งาน",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .black),
                                                        ),
                                                      ),
                                                      Container(
                                                        // width: 310,
                                                        child: Text(
                                                          "*",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          52,
                                                                          145,
                                                                          206)),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Container(
                                                    width: 310,
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                        // hintText: 'hello@thewiseworks.com',
                                                        hintStyle:
                                                            GoogleFonts.poppins(
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        232,
                                                                        242,
                                                                        254)),
                                                        contentPadding:
                                                            EdgeInsets.fromLTRB(
                                                                0, 20, 0, 0),
                                                        border:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          52,
                                                                          145,
                                                                          206)),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 32),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Wrap(
                                                    children: [
                                                      Container(
                                                        child: Text(
                                                          "เลือกประเภทธุรกิจ",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .black),
                                                        ),
                                                      ),
                                                      Container(
                                                        // width: 310,
                                                        child: Text(
                                                          "*",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          52,
                                                                          145,
                                                                          206)),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 15),
                                                    child: Container(
                                                      width: 334,
                                                      height: 40,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          color: Color.fromARGB(
                                                              255,
                                                              232,
                                                              242,
                                                              254)),
                                                      child:
                                                          DropdownButtonHideUnderline(
                                                        child: DropdownButton2(
                                                          value: selectedOption,
                                                          hint: Text(
                                                            'เลือกประเภทธุรกิจ',
                                                            style: GoogleFonts
                                                                .montserrat(
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            130,
                                                                            130,
                                                                            130)),
                                                          ),
                                                          icon: Transform
                                                              .translate(
                                                            offset:
                                                                Offset(-12, -2),
                                                            child: Icon(
                                                              Icons
                                                                  .arrow_drop_down_outlined,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      79,
                                                                      79,
                                                                      79),
                                                            ),
                                                          ),
                                                          isExpanded: true,
                                                          items: optionsItem
                                                              .map((option) {
                                                            return DropdownMenuItem<
                                                                String>(
                                                              value: option,
                                                              child: Text(
                                                                option,
                                                                style: GoogleFonts.montserrat(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            );
                                                          }).toList(),
                                                          dropdownDecoration:
                                                              BoxDecoration(
                                                                  color: Colors
                                                                      .white,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5)),
                                                          // itemHeight: 8,
                                                          onChanged: (value) {
                                                            setState(() {
                                                              selectedOption =
                                                                  value;
                                                            });
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 25, top: 36),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Text(
                                                "แพ็กเกจ",
                                                style:
                                                    GoogleFonts.ibmPlexSansThai(
                                                        fontSize: 24,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Color.fromARGB(
                                                            255, 51, 51, 51)),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 15),
                                              child: Container(
                                                width: 615,
                                                height: 60,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    color: Color.fromARGB(
                                                        255, 232, 242, 254)),
                                                child:
                                                    DropdownButtonHideUnderline(
                                                  child: DropdownButton2(
                                                    value: selectedPackage,
                                                    hint: Text(
                                                      'เลือกแพ็กเกจ',
                                                      style: GoogleFonts
                                                          .montserrat(
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      130,
                                                                      130,
                                                                      130)),
                                                    ),
                                                    icon: Transform.translate(
                                                      offset: Offset(-12, -2),
                                                      child: Icon(
                                                        Icons
                                                            .arrow_drop_down_outlined,
                                                        color: Color.fromARGB(
                                                            255, 79, 79, 79),
                                                      ),
                                                    ),
                                                    isExpanded: true,
                                                    items: packageItem
                                                        .map((option) {
                                                      return DropdownMenuItem<
                                                          String>(
                                                        value: option,
                                                        child: Text(
                                                          option,
                                                          style: GoogleFonts
                                                              .montserrat(
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Colors
                                                                      .black),
                                                        ),
                                                      );
                                                    }).toList(),
                                                    dropdownDecoration:
                                                        BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5)),
                                                    // itemHeight: 8,
                                                    onChanged: (value) {
                                                      setState(() {
                                                        selectedPackage = value;
                                                      });
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 36, left: 25),
                                              child: Container(
                                                width: 628,
                                                height: 220,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    border: Border.all(
                                                        color: Color.fromARGB(
                                                            255, 232, 242, 254),
                                                        width: 1)),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 29,
                                                              left: 15),
                                                      child: Text(
                                                        "โมดูลผลิตภัณฑ์",
                                                        style: GoogleFonts
                                                            .ibmPlexSansThai(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                color: Colors
                                                                    .black),
                                                        textAlign:
                                                            TextAlign.start,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 18,
                                                              left: 15),
                                                      child: Container(
                                                        width: 310,
                                                        decoration: BoxDecoration(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    75,
                                                                    195,
                                                                    211),
                                                            border: Border.all(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        52,
                                                                        145,
                                                                        206),
                                                                width: 1)),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 18,
                                                              left: 15),
                                                      child: Text(
                                                        "CMC (Consent Management)\nPDM (Personal Data Management)\nDSR (Data Subject Right Management)",
                                                        style: GoogleFonts
                                                            .ibmPlexSans(
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        130,
                                                                        130,
                                                                        130)),
                                                        textAlign:
                                                            TextAlign.start,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 36),
                                              child: Center(
                                                child: SizedBox(
                                                  width: 377,
                                                  height: 88,
                                                  child: ElevatedButton(
                                                    onPressed: () {},
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          Color.fromARGB(255,
                                                              57, 128, 237),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          44.0)),
                                                    ),
                                                    child: Text(
                                                      'ถัดไป',
                                                      style: GoogleFonts
                                                          .ibmPlexSans(
                                                              fontSize: 42,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color:
                                                                  Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 25),
                                              child: Center(
                                                child: Text(
                                                  "หรือ",
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                          fontSize: 32,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Color.fromARGB(
                                                              255,
                                                              130,
                                                              130,
                                                              130)),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 25),
                                              child: Center(
                                                child: SizedBox(
                                                  width: 571,
                                                  height: 91,
                                                  child: ElevatedButton(
                                                    onPressed: () {},
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      elevation: 4,
                                                      backgroundColor:
                                                          Colors.white,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          44.0)),
                                                    ),
                                                    child: Wrap(
                                                      children: [
                                                        SizedBox(
                                                            width: 71,
                                                            height: 59,
                                                            child: Image.asset(
                                                                "/demo/google.png")),
                                                        SizedBox(
                                                          width: 438,
                                                          child: Text(
                                                            'สมัครใช้งานด้วย Google',
                                                            style: GoogleFonts
                                                                .ibmPlexSans(
                                                                    fontSize:
                                                                        40,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: Colors
                                                                        .black),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 48,
                                  ),
                                  child: Center(
                                    child: Wrap(
                                      children: [
                                        Text(
                                          'หากคุณมีบัญชีอยู่แล้ว?',
                                          style: GoogleFonts.ibmPlexSansThai(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          ),
                                        ),
                                        TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              ' เข้าสู่ระบบ',
                                              style:
                                                  GoogleFonts.ibmPlexSansThai(
                                                fontSize: 24,
                                                fontWeight: FontWeight.w500,
                                                color: Color.fromARGB(
                                                    255, 52, 145, 206),
                                              ),
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 1440,
                        height: 1578,
                        color: Color.fromARGB(255, 245, 245, 245),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(top: 104),
                                  child: Column(
                                    children: [
                                      Text("ได้รับความไว้วางใจ",
                                          style: GoogleFonts.inter(
                                              color: Color.fromARGB(
                                                  255, 52, 145, 206),
                                              fontSize: 48,
                                              fontWeight: FontWeight.w700)),
                                      Text("จากองค์กรทั่วประเทศ",
                                          style: GoogleFonts.inter(
                                              color: Colors.black,
                                              fontSize: 48,
                                              fontWeight: FontWeight.w700)),
                                    ],
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(top: 60),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 379,
                                      height: 314,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.white),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 39),
                                            child: SizedBox(
                                              width: 100,
                                              height: 100,
                                              child:
                                                  Image.asset("/demo/team.png"),
                                            ),
                                          ),
                                          Text(
                                            "80+",
                                            style: GoogleFonts.inter(
                                                fontSize: 36,
                                                fontWeight: FontWeight.w700,
                                                color: Color.fromARGB(
                                                    255, 52, 145, 206)),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 20),
                                            child: Text(
                                              "ธุรกิจ และองค์กรต่างๆ ที่เราได้รับความไว้วางใจ\nให้ wisework ดูแลมากกว่า 80 โครงการ",
                                              style: GoogleFonts.inter(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color.fromARGB(
                                                      255, 0, 0, 0)),
                                              textAlign: TextAlign.center,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 31, right: 31),
                                      child: Container(
                                        width: 379,
                                        height: 314,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 39),
                                              child: SizedBox(
                                                width: 100,
                                                height: 100,
                                                child: Image.asset(
                                                    "/demo/colab.png"),
                                              ),
                                            ),
                                            Text(
                                              "10 ปี",
                                              style: GoogleFonts.inter(
                                                  fontSize: 36,
                                                  fontWeight: FontWeight.w700,
                                                  color: Color.fromARGB(
                                                      255, 52, 145, 206)),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 20),
                                              child: Text(
                                                "ทีมงานมากประสบการณ์ และเชี่ยวชาญ\nในวงการ Cyber Security กว่า 10 ปี",
                                                style: GoogleFonts.inter(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color.fromARGB(
                                                        255, 0, 0, 0)),
                                                textAlign: TextAlign.center,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 379,
                                      height: 314,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.white),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 39),
                                            child: SizedBox(
                                              width: 100,
                                              height: 100,
                                              child:
                                                  Image.asset("/demo/goal.png"),
                                            ),
                                          ),
                                          Text(
                                            "24 ชั่วโมง",
                                            style: GoogleFonts.inter(
                                                fontSize: 36,
                                                fontWeight: FontWeight.w700,
                                                color: Color.fromARGB(
                                                    255, 52, 145, 206)),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 20),
                                            child: Text(
                                              "บริการดูแลระดับ Premium Support\nโดยทีมงานในประเทศไทยตลอด 24 ชั่วโมง",
                                              style: GoogleFonts.inter(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color.fromARGB(
                                                      255, 0, 0, 0)),
                                              textAlign: TextAlign.center,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 130),
                                child: Container(
                                  width: 1170,
                                  height: 760,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white),
                                  child: SizedBox(
                                      width: 1161,
                                      height: 751,
                                      child:
                                          Image.asset("/demo/dashboard.png")),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            : Center(
                child: Column(
                  children: [
                    Container(
                      width: 1440,
                      height: Responsive.isTablet(context) ? 1636 : 1800,
                      color: Color.fromARGB(255, 232, 242, 252),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 150),
                              child: Container(
                                width: Responsive.isTablet(context) ? 726 : 350,
                                height:
                                    Responsive.isTablet(context) ? 1364 : 1550,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: Colors.white),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 68, left: 25),
                                      child: Text.rich(TextSpan(children: [
                                        TextSpan(
                                            text: 'สมัครใช้งานฟรี',
                                            style: GoogleFonts.ibmPlexSansThai(
                                                color: Colors.black,
                                                fontSize:
                                                    Responsive.isTablet(context)
                                                        ? 48
                                                        : 24,
                                                fontWeight: FontWeight.w500)),
                                        TextSpan(
                                            text: ' ไม่มีค่าใช้จ่าย',
                                            style: GoogleFonts.ibmPlexSansThai(
                                                color: Color.fromARGB(
                                                    255, 52, 145, 206),
                                                fontSize:
                                                    Responsive.isTablet(context)
                                                        ? 48
                                                        : 24,
                                                fontWeight: FontWeight.w500)),
                                      ])),
                                    ),
                                    SizedBox(
                                      height: Responsive.isTablet(context)
                                          ? 36
                                          : 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 25,
                                      ),
                                      child: Text(
                                        Responsive.isTablet(context)
                                            ? "ทดลองใช้งาน 7 วัน ไม่มีข้อมูลผูกมัดใดๆ"
                                            : "ทดลองใช้งาน 7 วัน\nไม่มีข้อมูลผูกมัดใดๆ",
                                        style: GoogleFonts.ibmPlexSansThai(
                                            fontSize:
                                                Responsive.isTablet(context)
                                                    ? 24
                                                    : 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      ),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(
                                          top: 36,
                                        ),
                                        child: Responsive.isTablet(context)
                                            ? Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 25),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Wrap(
                                                          children: [
                                                            Container(
                                                              // width: 310,
                                                              child: Text(
                                                                "ชื่อ-นามสกุล",
                                                                style: GoogleFonts.poppins(
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            ),
                                                            Container(
                                                              // width: 310,
                                                              child: Text(
                                                                "*",
                                                                style: GoogleFonts.poppins(
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            52,
                                                                            145,
                                                                            206)),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Container(
                                                          width: 310,
                                                          child: TextField(
                                                            decoration:
                                                                InputDecoration(
                                                              hintText:
                                                                  'wisework',
                                                              hintStyle: GoogleFonts.poppins(
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          232,
                                                                          242,
                                                                          254)),
                                                              contentPadding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          20,
                                                                          0,
                                                                          0),
                                                              border:
                                                                  UnderlineInputBorder(
                                                                borderSide: BorderSide(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            52,
                                                                            145,
                                                                            206)),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 32),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Wrap(
                                                          children: [
                                                            Container(
                                                              child: Text(
                                                                "ชื่อบริษัท",
                                                                style: GoogleFonts.poppins(
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            ),
                                                            Container(
                                                              // width: 310,
                                                              child: Text(
                                                                "*",
                                                                style: GoogleFonts.poppins(
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            52,
                                                                            145,
                                                                            206)),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Container(
                                                          width: 310,
                                                          child: TextField(
                                                            decoration:
                                                                InputDecoration(
                                                              hintText:
                                                                  'The wisework co.,Ltd.',
                                                              hintStyle: GoogleFonts.poppins(
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          232,
                                                                          242,
                                                                          254)),
                                                              contentPadding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          20,
                                                                          0,
                                                                          0),
                                                              border:
                                                                  UnderlineInputBorder(
                                                                borderSide: BorderSide(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            52,
                                                                            145,
                                                                            206)),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              )
                                            : Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 25),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Wrap(
                                                          children: [
                                                            Container(
                                                              // width: 310,
                                                              child: Text(
                                                                "ชื่อ-นามสกุล",
                                                                style: GoogleFonts.poppins(
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            ),
                                                            Container(
                                                              // width: 310,
                                                              child: Text(
                                                                "*",
                                                                style: GoogleFonts.poppins(
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            52,
                                                                            145,
                                                                            206)),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Container(
                                                          width: 300,
                                                          child: TextField(
                                                            decoration:
                                                                InputDecoration(
                                                              hintText:
                                                                  'wisework',
                                                              hintStyle: GoogleFonts.poppins(
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          232,
                                                                          242,
                                                                          254)),
                                                              contentPadding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          20,
                                                                          0,
                                                                          0),
                                                              border:
                                                                  UnderlineInputBorder(
                                                                borderSide: BorderSide(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            52,
                                                                            145,
                                                                            206)),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 32, left: 25),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Wrap(
                                                          children: [
                                                            Container(
                                                              // width: 310,
                                                              child: Text(
                                                                "ชื่อบริษัท",
                                                                style: GoogleFonts.poppins(
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            ),
                                                            Container(
                                                              // width: 310,
                                                              child: Text(
                                                                "*",
                                                                style: GoogleFonts.poppins(
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            52,
                                                                            145,
                                                                            206)),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Container(
                                                          width: 300,
                                                          child: TextField(
                                                            decoration:
                                                                InputDecoration(
                                                              hintText:
                                                                  'The wisework co.,Ltd.',
                                                              hintStyle: GoogleFonts.poppins(
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          232,
                                                                          242,
                                                                          254)),
                                                              contentPadding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          20,
                                                                          0,
                                                                          0),
                                                              border:
                                                                  UnderlineInputBorder(
                                                                borderSide: BorderSide(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            52,
                                                                            145,
                                                                            206)),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              )),
                                    Padding(
                                        padding: const EdgeInsets.only(top: 64),
                                        child: Responsive.isTablet(context)
                                            ? Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 25),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Wrap(
                                                          children: [
                                                            Container(
                                                              // width: 310,
                                                              child: Text(
                                                                "อีเมล",
                                                                style: GoogleFonts.poppins(
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            ),
                                                            Container(
                                                              // width: 310,
                                                              child: Text(
                                                                "*",
                                                                style: GoogleFonts.poppins(
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            52,
                                                                            145,
                                                                            206)),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Container(
                                                          width: 310,
                                                          child: TextField(
                                                            decoration:
                                                                InputDecoration(
                                                              hintText:
                                                                  'hello@thewiseworks.com',
                                                              hintStyle: GoogleFonts.poppins(
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          232,
                                                                          242,
                                                                          254)),
                                                              contentPadding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          20,
                                                                          0,
                                                                          0),
                                                              border:
                                                                  UnderlineInputBorder(
                                                                borderSide: BorderSide(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            52,
                                                                            145,
                                                                            206)),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 32),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Wrap(
                                                          children: [
                                                            Container(
                                                              child: Text(
                                                                "เบอร์โทรศัพท์",
                                                                style: GoogleFonts.poppins(
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            ),
                                                            Container(
                                                              // width: 310,
                                                              child: Text(
                                                                "*",
                                                                style: GoogleFonts.poppins(
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            52,
                                                                            145,
                                                                            206)),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Container(
                                                          width: 310,
                                                          child: TextField(
                                                            decoration:
                                                                InputDecoration(
                                                              hintText:
                                                                  'xxx-xxx-xxxx',
                                                              hintStyle: GoogleFonts.poppins(
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          232,
                                                                          242,
                                                                          254)),
                                                              contentPadding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          20,
                                                                          0,
                                                                          0),
                                                              border:
                                                                  UnderlineInputBorder(
                                                                borderSide: BorderSide(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            52,
                                                                            145,
                                                                            206)),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              )
                                            : Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 25),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Wrap(
                                                          children: [
                                                            Container(
                                                              // width: 310,
                                                              child: Text(
                                                                "อีเมล",
                                                                style: GoogleFonts.poppins(
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            ),
                                                            Container(
                                                              // width: 310,
                                                              child: Text(
                                                                "*",
                                                                style: GoogleFonts.poppins(
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            52,
                                                                            145,
                                                                            206)),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Container(
                                                          width: 300,
                                                          child: TextField(
                                                            decoration:
                                                                InputDecoration(
                                                              hintText:
                                                                  'hello@thewiseworks.com',
                                                              hintStyle: GoogleFonts.poppins(
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          232,
                                                                          242,
                                                                          254)),
                                                              contentPadding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          20,
                                                                          0,
                                                                          0),
                                                              border:
                                                                  UnderlineInputBorder(
                                                                borderSide: BorderSide(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            52,
                                                                            145,
                                                                            206)),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 25, top: 32),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Wrap(
                                                          children: [
                                                            Container(
                                                              // width: 310,
                                                              child: Text(
                                                                "เบอร์โทรศัพท์",
                                                                style: GoogleFonts.poppins(
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            ),
                                                            Container(
                                                              // width: 310,
                                                              child: Text(
                                                                "*",
                                                                style: GoogleFonts.poppins(
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            52,
                                                                            145,
                                                                            206)),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Container(
                                                          width: 300,
                                                          child: TextField(
                                                            decoration:
                                                                InputDecoration(
                                                              hintText:
                                                                  'xxx-xxx-xxxx',
                                                              hintStyle: GoogleFonts.poppins(
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          232,
                                                                          242,
                                                                          254)),
                                                              contentPadding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          20,
                                                                          0,
                                                                          0),
                                                              border:
                                                                  UnderlineInputBorder(
                                                                borderSide: BorderSide(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            52,
                                                                            145,
                                                                            206)),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              )),
                                    Padding(
                                        padding: const EdgeInsets.only(top: 64),
                                        child: Responsive.isTablet(context)
                                            ? Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 25),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Wrap(
                                                          children: [
                                                            Container(
                                                              // width: 310,
                                                              child: Text(
                                                                "จำนวนผู้ใช้งาน",
                                                                style: GoogleFonts.poppins(
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            ),
                                                            Container(
                                                              // width: 310,
                                                              child: Text(
                                                                "*",
                                                                style: GoogleFonts.poppins(
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            52,
                                                                            145,
                                                                            206)),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Container(
                                                          width: 310,
                                                          child: TextField(
                                                            decoration:
                                                                InputDecoration(
                                                              // hintText: 'hello@thewiseworks.com',
                                                              hintStyle: GoogleFonts.poppins(
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          232,
                                                                          242,
                                                                          254)),
                                                              contentPadding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          20,
                                                                          0,
                                                                          0),
                                                              border:
                                                                  UnderlineInputBorder(
                                                                borderSide: BorderSide(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            52,
                                                                            145,
                                                                            206)),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 32),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Wrap(
                                                          children: [
                                                            Container(
                                                              child: Text(
                                                                "เลือกประเภทธุรกิจ",
                                                                style: GoogleFonts.poppins(
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            ),
                                                            Container(
                                                              // width: 310,
                                                              child: Text(
                                                                "*",
                                                                style: GoogleFonts.poppins(
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            52,
                                                                            145,
                                                                            206)),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 15),
                                                          child: Container(
                                                            width: 334,
                                                            height: 40,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20),
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        232,
                                                                        242,
                                                                        254)),
                                                            child:
                                                                DropdownButtonHideUnderline(
                                                              child:
                                                                  DropdownButton2(
                                                                value:
                                                                    selectedOption,
                                                                hint: Text(
                                                                  'เลือกประเภทธุรกิจ',
                                                                  style: GoogleFonts.montserrat(
                                                                      fontSize:
                                                                          18,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      color: Color.fromARGB(
                                                                          255,
                                                                          130,
                                                                          130,
                                                                          130)),
                                                                ),
                                                                icon: Transform
                                                                    .translate(
                                                                  offset:
                                                                      Offset(
                                                                          -12,
                                                                          -2),
                                                                  child: Icon(
                                                                    Icons
                                                                        .arrow_drop_down_outlined,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            79,
                                                                            79,
                                                                            79),
                                                                  ),
                                                                ),
                                                                isExpanded:
                                                                    true,
                                                                items: optionsItem
                                                                    .map(
                                                                        (option) {
                                                                  return DropdownMenuItem<
                                                                      String>(
                                                                    value:
                                                                        option,
                                                                    child: Text(
                                                                      option,
                                                                      style: GoogleFonts.montserrat(
                                                                          fontSize:
                                                                              16,
                                                                          fontWeight: FontWeight
                                                                              .w500,
                                                                          color:
                                                                              Colors.black),
                                                                    ),
                                                                  );
                                                                }).toList(),
                                                                dropdownDecoration: BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            5)),
                                                                // itemHeight: 8,
                                                                onChanged:
                                                                    (value) {
                                                                  setState(() {
                                                                    selectedOption =
                                                                        value;
                                                                  });
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              )
                                            : Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 25),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Wrap(
                                                          children: [
                                                            Container(
                                                              // width: 310,
                                                              child: Text(
                                                                "จำนวนผู้ใช้งาน",
                                                                style: GoogleFonts.poppins(
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            ),
                                                            Container(
                                                              // width: 310,
                                                              child: Text(
                                                                "*",
                                                                style: GoogleFonts.poppins(
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            52,
                                                                            145,
                                                                            206)),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Container(
                                                          width: 300,
                                                          child: TextField(
                                                            decoration:
                                                                InputDecoration(
                                                              // hintText: 'hello@thewiseworks.com',
                                                              hintStyle: GoogleFonts.poppins(
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          232,
                                                                          242,
                                                                          254)),
                                                              contentPadding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          20,
                                                                          0,
                                                                          0),
                                                              border:
                                                                  UnderlineInputBorder(
                                                                borderSide: BorderSide(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            52,
                                                                            145,
                                                                            206)),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      top: 32,
                                                    ),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Wrap(
                                                          children: [
                                                            Container(
                                                              child: Text(
                                                                "ประเภทธุรกิจ",
                                                                style: GoogleFonts.poppins(
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            ),
                                                            Container(
                                                              // width: 310,
                                                              child: Text(
                                                                "*",
                                                                style: GoogleFonts.poppins(
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            52,
                                                                            145,
                                                                            206)),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 15),
                                                          child: Container(
                                                            width: 280,
                                                            height: 40,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20),
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        232,
                                                                        242,
                                                                        254)),
                                                            child:
                                                                DropdownButtonHideUnderline(
                                                              child:
                                                                  DropdownButton2(
                                                                value:
                                                                    selectedOption,
                                                                hint: Text(
                                                                  'เลือกประเภทธุรกิจ',
                                                                  style: GoogleFonts.montserrat(
                                                                      fontSize:
                                                                          18,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      color: Color.fromARGB(
                                                                          255,
                                                                          130,
                                                                          130,
                                                                          130)),
                                                                ),
                                                                icon: Transform
                                                                    .translate(
                                                                  offset:
                                                                      Offset(
                                                                          -12,
                                                                          -2),
                                                                  child: Icon(
                                                                    Icons
                                                                        .arrow_drop_down_outlined,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            79,
                                                                            79,
                                                                            79),
                                                                  ),
                                                                ),
                                                                isExpanded:
                                                                    true,
                                                                items: optionsItem
                                                                    .map(
                                                                        (option) {
                                                                  return DropdownMenuItem<
                                                                      String>(
                                                                    value:
                                                                        option,
                                                                    child: Text(
                                                                      option,
                                                                      style: GoogleFonts.montserrat(
                                                                          fontSize:
                                                                              16,
                                                                          fontWeight: FontWeight
                                                                              .w500,
                                                                          color:
                                                                              Colors.black),
                                                                    ),
                                                                  );
                                                                }).toList(),
                                                                dropdownDecoration: BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            5)),
                                                                // itemHeight: 8,
                                                                onChanged:
                                                                    (value) {
                                                                  setState(() {
                                                                    selectedOption =
                                                                        value;
                                                                  });
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              )),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 36),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 25),
                                            child: Container(
                                              child: Text(
                                                "แพ็กเกจ",
                                                style:
                                                    GoogleFonts.ibmPlexSansThai(
                                                        fontSize:
                                                            Responsive.isTablet(
                                                                    context)
                                                                ? 24
                                                                : 18,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Color.fromARGB(
                                                            255, 51, 51, 51)),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 15, left: 25),
                                            child: Container(
                                              width:
                                                  Responsive.isTablet(context)
                                                      ? 615
                                                      : 290,
                                              height:
                                                  Responsive.isTablet(context)
                                                      ? 60
                                                      : 40,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  color: Color.fromARGB(
                                                      255, 232, 242, 254)),
                                              child:
                                                  DropdownButtonHideUnderline(
                                                child: DropdownButton2(
                                                  value: selectedPackage,
                                                  hint: Text(
                                                    'เลือกแพ็กเกจ',
                                                    style:
                                                        GoogleFonts.montserrat(
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    130,
                                                                    130,
                                                                    130)),
                                                  ),
                                                  icon: Transform.translate(
                                                    offset: Offset(-12, -2),
                                                    child: Icon(
                                                      Icons
                                                          .arrow_drop_down_outlined,
                                                      color: Color.fromARGB(
                                                          255, 79, 79, 79),
                                                    ),
                                                  ),
                                                  isExpanded: true,
                                                  items:
                                                      packageItem.map((option) {
                                                    return DropdownMenuItem<
                                                        String>(
                                                      value: option,
                                                      child: Text(
                                                        option,
                                                        style: GoogleFonts
                                                            .montserrat(
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color: Colors
                                                                    .black),
                                                      ),
                                                    );
                                                  }).toList(),
                                                  dropdownDecoration:
                                                      BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5)),
                                                  // itemHeight: 8,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      selectedPackage = value;
                                                    });
                                                  },
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 36, left: 25),
                                            child: Container(
                                              width:
                                                  Responsive.isTablet(context)
                                                      ? 628
                                                      : 300,
                                              height: 220,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  border: Border.all(
                                                      color: Color.fromARGB(
                                                          255, 232, 242, 254),
                                                      width: 1)),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 29, left: 15),
                                                    child: Text(
                                                      "โมดูลผลิตภัณฑ์",
                                                      style: GoogleFonts
                                                          .ibmPlexSansThai(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color:
                                                                  Colors.black),
                                                      textAlign:
                                                          TextAlign.start,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 18, left: 15),
                                                    child: Container(
                                                      width: 310,
                                                      decoration: BoxDecoration(
                                                          color: Color.fromARGB(
                                                              255,
                                                              75,
                                                              195,
                                                              211),
                                                          border: Border.all(
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      52,
                                                                      145,
                                                                      206),
                                                              width: 1)),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 18, left: 15),
                                                    child: Text(
                                                      "CMC (Consent Management)\nPDM (Personal Data Management)\nDSR (Data Subject Right Management)",
                                                      style: GoogleFonts
                                                          .ibmPlexSans(
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      130,
                                                                      130,
                                                                      130)),
                                                      textAlign:
                                                          TextAlign.start,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 36,
                                            ),
                                            child: Center(
                                              child: SizedBox(
                                                width:
                                                    Responsive.isTablet(context)
                                                        ? 377
                                                        : 193,
                                                height:
                                                    Responsive.isTablet(context)
                                                        ? 88
                                                        : 50,
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        Color.fromARGB(
                                                            255, 57, 128, 237),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        44.0)),
                                                  ),
                                                  child: Text(
                                                    'ถัดไป',
                                                    style:
                                                        GoogleFonts.ibmPlexSans(
                                                            fontSize: Responsive
                                                                    .isTablet(
                                                                        context)
                                                                ? 42
                                                                : 20,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color:
                                                                Colors.white),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 25,
                                            ),
                                            child: Center(
                                              child: Text(
                                                "หรือ",
                                                style:
                                                    GoogleFonts.ibmPlexSansThai(
                                                        fontSize:
                                                            Responsive.isTablet(
                                                                    context)
                                                                ? 32
                                                                : 20,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Color.fromARGB(
                                                            255,
                                                            130,
                                                            130,
                                                            130)),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                              height:
                                                  Responsive.isTablet(context)
                                                      ? 25
                                                      : 15),
                                          Center(
                                            child: SizedBox(
                                              width:
                                                  Responsive.isTablet(context)
                                                      ? 571
                                                      : 312,
                                              height:
                                                  Responsive.isTablet(context)
                                                      ? 91
                                                      : 72,
                                              child: ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                  elevation: 4,
                                                  backgroundColor: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              44.0)),
                                                ),
                                                child: Wrap(
                                                  children: [
                                                    SizedBox(
                                                        width:
                                                            Responsive.isTablet(
                                                                    context)
                                                                ? 71
                                                                : 45,
                                                        height:
                                                            Responsive.isTablet(
                                                                    context)
                                                                ? 59
                                                                : 37,
                                                        child: Image.asset(
                                                            "/demo/google.png")),
                                                    SizedBox(
                                                      width:
                                                          Responsive.isTablet(
                                                                  context)
                                                              ? 438
                                                              : 205,
                                                      child: Text(
                                                        'สมัครใช้งานด้วย Google',
                                                        style: GoogleFonts
                                                            .ibmPlexSansThai(
                                                                fontSize: Responsive
                                                                        .isTablet(
                                                                            context)
                                                                    ? 40
                                                                    : 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .black),
                                                      ),
                                                    ),
                                                  ],
                                                ),
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
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 48,
                              ),
                              child: Center(
                                child: Wrap(
                                  children: [
                                    Text(
                                      'หากคุณมีบัญชีอยู่แล้ว?',
                                      style: GoogleFonts.ibmPlexSansThai(
                                        fontSize: Responsive.isTablet(context)
                                            ? 24
                                            : 20,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    ),
                                    TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          ' เข้าสู่ระบบ',
                                          style: GoogleFonts.ibmPlexSansThai(
                                            fontSize:
                                                Responsive.isTablet(context)
                                                    ? 24
                                                    : 20,
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromARGB(
                                                255, 52, 145, 206),
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 1440,
                      height: Responsive.isTablet(context) ? 3176 : 2300,
                      color: Colors.white,
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: Responsive.isTablet(context) ? 768 : 375,
                              // height: 3176,
                              color: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Responsive.isTablet(context)
                                      ? Padding(
                                          padding: const EdgeInsets.only(
                                              top: 50, left: 598),
                                          child: Container(
                                              // color: Colors.red,
                                              width: 70,
                                              // height: 103,
                                              child:
                                                  Image.asset("/demo/dot.png")),
                                        )
                                      : SizedBox(),
                                  Responsive.isTablet(context)
                                      ? Padding(
                                          padding: const EdgeInsets.only(
                                              top: 144, left: 97.5),
                                          child: Text(
                                            "ทดลองใช้งานฟรี",
                                            style: GoogleFonts.ibmPlexSans(
                                                fontSize: 48,
                                                fontWeight: FontWeight.w600,
                                                color: Color.fromARGB(
                                                    255, 23, 49, 90)),
                                            textAlign: TextAlign.start,
                                          ),
                                        )
                                      : Padding(
                                          padding: const EdgeInsets.only(
                                              top: 79, left: 26),
                                          child: Text(
                                            "ทดลองใช้งานฟรี",
                                            style: GoogleFonts.ibmPlexSans(
                                                fontSize: 24,
                                                fontWeight: FontWeight.w600,
                                                color: Color.fromARGB(
                                                    255, 23, 49, 90)),
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                  Responsive.isTablet(context)
                                      ? Padding(
                                          padding: const EdgeInsets.only(
                                              top: 21, left: 97.5),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "สัมผัสประสบการณ์ใหม่ของการจัดการข้อมูลส่วนตัวที่แตกต่าง\nอย่างเป็นระบบ ทดลองใช้งานโปรแกรม PDPA Management ",
                                                style: GoogleFonts.ibmPlexSans(
                                                    fontSize: 24,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color.fromARGB(
                                                        255, 83, 104, 106)),
                                                textAlign: TextAlign.start,
                                              ),
                                              Wrap(
                                                children: [
                                                  Text(
                                                    "Platform ได้แล้ววันนี้เพียง",
                                                    style:
                                                        GoogleFonts.ibmPlexSans(
                                                            fontSize: 24,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    83,
                                                                    104,
                                                                    106)),
                                                    textAlign: TextAlign.start,
                                                  ),
                                                  TextButton(
                                                    onPressed: () {},
                                                    child: Text(
                                                      "คลิกลงทะเบียน",
                                                      style: GoogleFonts
                                                          .ibmPlexSans(
                                                              fontSize: 24,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      75,
                                                                      196,
                                                                      213)),
                                                      textAlign:
                                                          TextAlign.start,
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ))
                                      : Padding(
                                          padding: const EdgeInsets.only(
                                              top: 30, left: 26),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "สัมผัสประสบการณ์ใหม่ของการจัดการ\nข้อมูลส่วนตัวที่แตกต่างอย่างเป็นระบบ\nทดลองใช้งานโปรแกรม PDPA\nManagement Platform ",
                                                style: GoogleFonts.ibmPlexSans(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color.fromARGB(
                                                        255, 83, 104, 106)),
                                                textAlign: TextAlign.start,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5),
                                                child: Wrap(
                                                  children: [
                                                    Text(
                                                      "ได้แล้ววันนี้เพียง",
                                                      style: GoogleFonts
                                                          .ibmPlexSans(
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      83,
                                                                      104,
                                                                      106)),
                                                      textAlign:
                                                          TextAlign.start,
                                                    ),
                                                    TextButton(
                                                      onPressed: () {},
                                                      child: Text(
                                                        "คลิกลงทะเบียน",
                                                        style: GoogleFonts
                                                            .ibmPlexSans(
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        75,
                                                                        196,
                                                                        213)),
                                                        textAlign:
                                                            TextAlign.start,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          )),
                                  Responsive.isTablet(context)
                                      ? Padding(
                                          padding: const EdgeInsets.only(
                                              top: 48, left: 97.5),
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text:
                                                      'โปรแกรมจัดการข้อมูลส่วนบุคคล',
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                    fontSize: 36,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '\nwisework',
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                    fontSize: 36,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color.fromARGB(
                                                        255, 52, 145, 206),
                                                  ),
                                                ),
                                                TextSpan(
                                                  text:
                                                      ' ตัวช่วยสำหรับธุรกิจคุณ',
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                    fontSize: 36,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color.fromARGB(
                                                        255, 23, 49, 90),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      : Padding(
                                          padding: const EdgeInsets.only(
                                              top: 30, left: 26),
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text:
                                                      'โปรแกรมจัดการข้อมูลส่วนบุคคล',
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '\nwisework',
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color.fromARGB(
                                                        255, 52, 145, 206),
                                                  ),
                                                ),
                                                TextSpan(
                                                  text:
                                                      ' ตัวช่วยสำหรับธุรกิจคุณ',
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color.fromARGB(
                                                        255, 23, 49, 90),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                ],
                              ),
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 92,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Responsive.isTablet(context)
                                        ? Container(
                                            // width: 523,
                                            width: 1440,
                                            height: 425,
                                            // color: Colors.purple,
                                            color: Color.fromARGB(
                                                0, 250, 251, 252),
                                            child: Column(
                                              // mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                CarouselSlider(
                                                  carouselController:
                                                      _controller,
                                                  options: CarouselOptions(
                                                    // viewportFraction: 0.95,
                                                    height: 425,
                                                    // enlargeCenterPage: true,
                                                    autoPlay: true,
                                                    onPageChanged:
                                                        (index, reason) {
                                                      setState(() {
                                                        _current = index;
                                                        // print('Current Page: $_current');
                                                      });
                                                    },
                                                  ),
                                                  items: [
                                                    Stack(
                                                      children: [
                                                        SizedBox(
                                                            width: 523,
                                                            height: 425,
                                                            child: Image.asset(
                                                                "/demo/pic1.png")),
                                                        new Positioned(
                                                          top: 169,
                                                          left: 14,
                                                          child: Text(
                                                            "ลดความยุ่งยาก\nจากการทำงานที่ซ้ำซ้อน",
                                                            style: GoogleFonts
                                                                .poppins(
                                                                    fontSize:
                                                                        24,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Colors
                                                                        .white),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    Stack(
                                                      children: [
                                                        SizedBox(
                                                            width: 523,
                                                            height: 425,
                                                            child: Image.asset(
                                                                "/demo/pic2.png")),
                                                        new Positioned(
                                                          top: 195,
                                                          left: 120,
                                                          child: Text(
                                                            "ประหยัดเวลาในการทำงาน",
                                                            style: GoogleFonts
                                                                .poppins(
                                                                    fontSize:
                                                                        24,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Colors
                                                                        .white),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    Stack(
                                                      children: [
                                                        SizedBox(
                                                            width: 523,
                                                            height: 425,
                                                            child: Image.asset(
                                                                "/demo/pic3.png")),
                                                        new Positioned(
                                                          top: 187,
                                                          left: 236,
                                                          child: Text(
                                                            "ลดภาระของ\nData Protection Officer",
                                                            style: GoogleFonts
                                                                .poppins(
                                                                    fontSize:
                                                                        24,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Colors
                                                                        .white),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          )
                                        : Container(
                                            // width: 523,
                                            width: 1440,
                                            height: 260,
                                            // color: Colors.purple,
                                            color: Color.fromARGB(
                                                0, 250, 251, 252),
                                            child: Column(
                                              // mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                CarouselSlider(
                                                  carouselController:
                                                      _controller,
                                                  options: CarouselOptions(
                                                    viewportFraction: 0.87,
                                                    height: 260,
                                                    // enlargeCenterPage: true,
                                                    autoPlay: true,
                                                    onPageChanged:
                                                        (index, reason) {
                                                      setState(() {
                                                        _current = index;
                                                        // print('Current Page: $_current');
                                                      });
                                                    },
                                                  ),
                                                  items: [
                                                    Stack(
                                                      children: [
                                                        SizedBox(
                                                            width: 320,
                                                            height: 260,
                                                            child: Image.asset(
                                                                "/demo/pic1.png")),
                                                        new Positioned(
                                                          top: 120,
                                                          left: 20,
                                                          child: Text(
                                                            "ลดความยุ่งยาก\nจากการทำงานที่ซ้ำซ้อน",
                                                            style: GoogleFonts
                                                                .poppins(
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Colors
                                                                        .white),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    Stack(
                                                      children: [
                                                        SizedBox(
                                                            width: 320,
                                                            height: 260,
                                                            child: Image.asset(
                                                                "/demo/pic2.png")),
                                                        new Positioned(
                                                          top: 130,
                                                          left: 50,
                                                          child: Text(
                                                            "ประหยัดเวลาในการทำงาน",
                                                            style: GoogleFonts
                                                                .poppins(
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Colors
                                                                        .white),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    Stack(
                                                      children: [
                                                        SizedBox(
                                                            width: 320,
                                                            height: 260,
                                                            child: Image.asset(
                                                                "/demo/pic3.png")),
                                                        new Positioned(
                                                          top: 120,
                                                          left: 100,
                                                          child: Text(
                                                            "ลดภาระของ\nData Protection Officer",
                                                            style: GoogleFonts
                                                                .poppins(
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Colors
                                                                        .white),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 45),
                                      child: Container(
                                        child: AnimatedSmoothIndicator(
                                            activeIndex: _current,
                                            count: 3,
                                            effect: ScaleEffect(
                                                activePaintStyle:
                                                    PaintingStyle.stroke,
                                                scale: 1.4,
                                                activeStrokeWidth: 1.0,
                                                dotWidth: 16,
                                                dotHeight: 16,
                                                dotColor: Color.fromARGB(
                                                    255, 137, 141, 149))),
                                      ),
                                    ),
                                    Responsive.isTablet(context)
                                        ? Padding(
                                            padding:
                                                const EdgeInsets.only(top: 76),
                                            child: Column(
                                              children: [
                                                Text("ได้รับความไว้วางใจ",
                                                    style: GoogleFonts.inter(
                                                        color: Color.fromARGB(
                                                            255, 52, 145, 206),
                                                        fontSize: 48,
                                                        fontWeight:
                                                            FontWeight.w700)),
                                                Text("จากองค์กรทั่วประเทศ",
                                                    style: GoogleFonts.inter(
                                                        color: Colors.black,
                                                        fontSize: 48,
                                                        fontWeight:
                                                            FontWeight.w700)),
                                              ],
                                            ))
                                        : Padding(
                                            padding:
                                                const EdgeInsets.only(top: 60),
                                            child: Column(
                                              children: [
                                                Text("ได้รับความไว้วางใจ",
                                                    style: GoogleFonts.inter(
                                                        color: Color.fromARGB(
                                                            255, 52, 145, 206),
                                                        fontSize: 30,
                                                        fontWeight:
                                                            FontWeight.w700)),
                                                Text("จากองค์กรทั่วประเทศ",
                                                    style: GoogleFonts.inter(
                                                        color: Colors.black,
                                                        fontSize: 30,
                                                        fontWeight:
                                                            FontWeight.w700)),
                                              ],
                                            )),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 50),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: Responsive.isTablet(context)
                                                ? 379
                                                : 337,
                                            height: Responsive.isTablet(context)
                                                ? 314
                                                : 289,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.3),
                                                    spreadRadius: 3,
                                                    blurRadius: 2,
                                                    offset: Offset(0,
                                                        3), // changes position of shadow
                                                  ),
                                                ],
                                                color: Colors.white),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 39),
                                                  child: SizedBox(
                                                    width: 100,
                                                    height: 100,
                                                    child: Image.asset(
                                                        "/demo/team.png"),
                                                  ),
                                                ),
                                                Text(
                                                  "80+",
                                                  style: GoogleFonts.inter(
                                                      fontSize: 36,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Color.fromARGB(
                                                          255, 52, 145, 206)),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 20),
                                                  child: Text(
                                                    "ธุรกิจ และองค์กรต่างๆ ที่เราได้รับความไว้วางใจ\nให้ wisework ดูแลมากกว่า 80 โครงการ",
                                                    style: GoogleFonts.inter(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Color.fromARGB(
                                                            255, 0, 0, 0)),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 31, bottom: 31),
                                            child: Container(
                                              width:
                                                  Responsive.isTablet(context)
                                                      ? 379
                                                      : 337,
                                              height:
                                                  Responsive.isTablet(context)
                                                      ? 314
                                                      : 289,
                                              decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.grey
                                                          .withOpacity(0.3),
                                                      spreadRadius: 3,
                                                      blurRadius: 2,
                                                      offset: Offset(0,
                                                          3), // changes position of shadow
                                                    ),
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  color: Colors.white),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 39),
                                                    child: SizedBox(
                                                      width: 100,
                                                      height: 100,
                                                      child: Image.asset(
                                                          "/demo/colab.png"),
                                                    ),
                                                  ),
                                                  Text(
                                                    "10 ปี",
                                                    style: GoogleFonts.inter(
                                                        fontSize: 36,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Color.fromARGB(
                                                            255, 52, 145, 206)),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 20),
                                                    child: Text(
                                                      "ทีมงานมากประสบการณ์ และเชี่ยวชาญ\nในวงการ Cyber Security กว่า 10 ปี",
                                                      style: GoogleFonts.inter(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Color.fromARGB(
                                                              255, 0, 0, 0)),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: Responsive.isTablet(context)
                                                ? 379
                                                : 337,
                                            height: Responsive.isTablet(context)
                                                ? 314
                                                : 289,
                                            decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.3),
                                                    spreadRadius: 3,
                                                    blurRadius: 2,
                                                    offset: Offset(0,
                                                        3), // changes position of shadow
                                                  ),
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: Colors.white),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 39),
                                                  child: SizedBox(
                                                    width: 100,
                                                    height: 100,
                                                    child: Image.asset(
                                                        "/demo/goal.png"),
                                                  ),
                                                ),
                                                Text(
                                                  "24 ชั่วโมง",
                                                  style: GoogleFonts.inter(
                                                      fontSize: 36,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Color.fromARGB(
                                                          255, 52, 145, 206)),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 20),
                                                  child: Text(
                                                    "บริการดูแลระดับ Premium Support\nโดยทีมงานในประเทศไทยตลอด 24 ชั่วโมง",
                                                    style: GoogleFonts.inter(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Color.fromARGB(
                                                            255, 0, 0, 0)),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 75),
                                      child: Container(
                                        width: Responsive.isTablet(context)
                                            ? 700
                                            : 337,
                                        height: Responsive.isTablet(context)
                                            ? 500
                                            : 250,
                                        decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.3),
                                                spreadRadius: 10,
                                                blurRadius: 20,
                                                offset: Offset(0,
                                                    3), // changes position of shadow
                                              ),
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white),
                                        child: SizedBox(
                                            width: 335,
                                            height: 240,
                                            child: Image.asset(
                                                "/demo/dashboard.png")),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ));
  }
}

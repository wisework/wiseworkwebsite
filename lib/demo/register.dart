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

  String? selectedOption;

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
                                                    value: selectedOption,
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
                                                    items: optionsItem
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
                                                        selectedOption = value;
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
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : Responsive.isTablet(context)
                ? Container()
                : Container());
  }
}

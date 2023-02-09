import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wiseintern/responsive.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CustomerModel {
  final String imageUrl;
  CustomerModel(
    this.imageUrl,
  );
}

class CustomerPage extends StatefulWidget {
  @override
  _CustomerState createState() => _CustomerState();
}

class _CustomerState extends State<CustomerPage> {
  final CarouselController _controller = CarouselController();
  final controller =
      PageController(viewportFraction: 0.8, keepPage: true, initialPage: 0);
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    List customer = [
      'customer/nia.png',
      'customer/viriya.png',
      'customer/royalTH.png',
      'customer/bitkub.png',
      'customer/bdms.png',
      'customer/boonrawd.png',
      'customer/brr.png',
      'customer/pat.png',
      'customer/advice.png',
      'customer/ichitan.png',
      'customer/singha.png',
      'customer/click.png',
      'customer/p-pat.png',
      'customer/rise-consulting.png',
      'customer/meng.png',
      'customer/singha-beer.png',
      'customer/daiichi.png',
      'customer/kdn.png',
      'customer/national-economic.png',
      'customer/intrarat.png',
      'customer/singha-park.png',
      'customer/muzik.png',
      'customer/santafe.png',
      'customer/ku.png',
      'customer/sbp.png',
      'customer/win.png',
    ];
    var screenSize = MediaQuery.of(context).size;
    // if (screenSize.width > 1000) {
    //   isLargeScreen = true;

    // }

    return Center(
      child: Container(
        width: 1440,
        color: Colors.white,
        margin: EdgeInsets.all(00.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 123,
              ),
              Text(
                'ลูกค้าคนสำคัญของเรา',
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 24, 84, 110),
                  fontSize: Responsive.isDesktop(context)
                      ? 48
                      : Responsive.isTablet(context)
                          ? 35
                          : 25,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Column(
                children: [
                  Text(
                    Responsive.isDesktop(context)
                        ? 'ด้วยประสบการณ์ Software Solutions ครบวงจร เราได้รับความไว้วางใจ\nให้ดูแลธุรกิจทั้งองค์กรภาครัฐ องค์กรเอกชน ตลอดจนธุรกิจขนาดเล็ก หรือ SME '
                        : 'ด้วยประสบการณ์ Software Solutions ครบวงจร เราได้รับความไว้วางใจให้ดูแลธุรกิจทั้งองค์กรภาครัฐ องค์กรเอกชน ตลอดจนธุรกิจขนาดเล็ก หรือ SME ',
                    style: GoogleFonts.ibmPlexSansThai(
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 24, 84, 110),
                      fontSize: Responsive.isDesktop(context)
                          ? 20
                          : Responsive.isTablet(context)
                              ? 20
                              : 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  Container(
                    width: 1440,
                    child: GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: Responsive.isDesktop(context)
                              ? 5
                              : Responsive.isTablet(context)
                                  ? 3
                                  : 2,
                          crossAxisSpacing: Responsive.isDesktop(context)
                              ? 20
                              : Responsive.isTablet(context)
                                  ? 20
                                  : 10,
                          mainAxisSpacing: Responsive.isDesktop(context)
                              ? 20
                              : Responsive.isTablet(context)
                                  ? 20
                                  : 10,
                        ),
                        itemCount: customer.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            // decoration: BoxDecoration(
                            //   borderRadius: BorderRadius.circular(20),
                            //   color: Color.fromARGB(255, 178, 205, 244),
                            // ),
                            child: new Material(
                              child: new Container(
                                width: 165,
                                height: 165,
                                child: Center(
                                  child: Container(
                                    margin: EdgeInsets.all(15),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? 140
                                              : Responsive.isTablet(context)
                                                  ? 140
                                                  : 100,
                                          height: Responsive.isDesktop(context)
                                              ? 140
                                              : Responsive.isTablet(context)
                                                  ? 140
                                                  : 100,
                                          child: Image.asset(customer[index]),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              color: Colors.transparent,
                            ),
                          );
                        }),
                  ),
                  Container(
                    height: 206,
                    width: 1440,
                    color: Color.fromARGB(255, 5, 45, 97),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            new SizedBox(
                              height: 206,
                              width: 1440,
                            ),
                            new Positioned(
                                top: 0,
                                right: 1350,
                                child: Container(
                                  height: 205,
                                  width: 205,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(90, 68, 137, 255),
                                      shape: BoxShape.circle),
                                )),
                            new Positioned(
                              top: 33,
                              left: 212,
                              child: Container(
                                height: 80,
                                width: 539.82,
                                // color: Colors.pink,
                                child: Text(
                                  "พร้อมวางแผนธุรกิจให้คุณ!",
                                  style: GoogleFonts.ibmPlexSansThai(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 48,
                                      color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            new Positioned(
                                // top: 99.5,
                                top: 110.5,
                                left: 213.36,
                                child: Container(
                                  height: 66.5,
                                  width: 539.82,
                                  // color: Colors.red,
                                  child: Text(
                                    "ให้องค์กรของคุณ วางแผนและจัดการกับ DATA หัวใจสำคัญของธุรกิจ ได้ถูกต้องตามกฎหมาย ปรึกษาเรา #TeamWiseWork",
                                    style: GoogleFonts.ibmPlexSansThai(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  ),
                                )),
                            new Positioned(
                              left: 803.34,
                              top: 79,
                              child: SizedBox(
                                width: 193,
                                height: 48,
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
                                    'ติดต่อเรา',
                                    style: GoogleFonts.ibmPlexSansThai(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 51),
                    child: Container(
                      height: 800,
                      width: 1440,
                      // color: Colors.green,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 167.39, left: 124.74),
                                child: Container(
                                  height: 600,
                                  width: 583.78,
                                  // color: Colors.amber,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 70,
                                        width: 500,
                                        // color: Colors.white,
                                        child: Text(
                                          "ลูกค้าคนสำคัญของเรา",
                                          style: GoogleFonts.ibmPlexSansThai(
                                              fontSize: 48,
                                              fontWeight: FontWeight.w700,
                                              color: Color.fromARGB(
                                                  255, 24, 84, 110)),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        height: 160,
                                        width: 519,
                                        // color: Colors.black,
                                        child: Text(
                                          "จากประสบการณ์ของทีมผู้ให้คำปรึกษามามากกว่า 50+ โครงการ ทีมงานผู้เชี่ยวชาญที่พร้อมให้คำปรึกษา วางแผน และวางระบบ ตามกฎหมาย สำหรับองค์กรและธุรกิจต่างๆ  ดูแลอย่างใกล้ชิด ตลอดการใช้งาน ตั้งแต่เริ่มต้นจนเสร็จสิ้นกระบวนการ",
                                          style: GoogleFonts.ibmPlexSansThai(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromARGB(
                                                  255, 87, 87, 87)),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                      Container(
                                        height: 60,
                                        width: 519,
                                        child: Text(
                                          "พร้อมให้คำปรึกษาแนะนำเพื่อสิ่งที่ดีที่สุดสำหรับธุรกิจคุณ \nปรึกษาเรา #Teamwisework",
                                          style: GoogleFonts.ibmPlexSansThai(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                            color: Color.fromARGB(
                                                255, 75, 195, 211),
                                          ),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 68.27,
                                      ),
                                      Row(
                                        children: [
                                          Wrap(children: [
                                            SizedBox(
                                              width: 191.67,
                                              height: 56.7,
                                              child: ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Color.fromARGB(
                                                          255, 75, 195, 211),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30.0)),
                                                ),
                                                child: Text(
                                                  'รับคำปรึกษา',
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Colors.white),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 66.45,
                                            ),
                                            SizedBox(
                                              width: 191.67,
                                              height: 56.7,
                                              child: ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Color.fromARGB(
                                                          255, 231, 251, 253),
                                                  shape: RoundedRectangleBorder(
                                                      side: BorderSide(
                                                          color: Color.fromARGB(
                                                              255,
                                                              75,
                                                              195,
                                                              211),
                                                          width: 2.0),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30.0)),
                                                ),
                                                child: Text(
                                                  'ลูกค้าของเรา',
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Colors.black),
                                                ),
                                              ),
                                            ),
                                          ]),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 100.03, left: 37.92),
                                child: Container(
                                  height: 550.85,
                                  width: 553.2,
                                  child: Image.asset("/customer/team.png"),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 1440,
                    height: 1040,
                    // color: Colors.purple,
                    color: Color.fromARGB(255, 250, 251, 252),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CarouselSlider(
                          options: CarouselOptions(
                            height: 1000,
                            autoPlay: true,
                            onPageChanged: (index, reason) {
                              setState(() {
                                _current = index;
                                // print('Current Page: $_current');
                              });
                            },
                          ),
                          items: [
                            Container(
                              width: 1438,
                              // height: 1000,
                              margin: EdgeInsets.all(20),
                              // width: 1400,
                              color: Color.fromARGB(255, 250, 251, 252),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    children: [
                                      Container(
                                        height: 300,
                                        width: 560,
                                        // color: Colors.pink,
                                        child: Stack(
                                          children: [
                                            new Positioned(
                                              top: 64,
                                              child: SizedBox(
                                                  height: 120,
                                                  width: 142,
                                                  child: Image.asset(
                                                      "/customer/comma.png")),
                                            ),
                                            new Positioned(
                                              top: 110,
                                              left: 100,
                                              child: Container(
                                                height: 180,
                                                width: 400,
                                                // color: Colors.purple,
                                                child: Text(
                                                  "Real Stories from \nReal Customers",
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                          color: Color.fromARGB(
                                                              255, 24, 84, 110),
                                                          fontSize: 48,
                                                          fontWeight:
                                                              FontWeight.w700),
                                                  textAlign: TextAlign.start,
                                                ),
                                              ),
                                            ),
                                            new Positioned(
                                                top: 260,
                                                left: 100,
                                                child: Container(
                                                  height: 32,
                                                  width: 460,
                                                  // color: Colors.amber,
                                                  child: Text(
                                                    " Why wisework? แบ่งปันประสบการณ์จริงจากลูกค้าคนสำคัญ",
                                                    style: GoogleFonts
                                                        .ibmPlexSansThai(
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    87,
                                                                    87,
                                                                    87)),
                                                  ),
                                                ))
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 56,
                                      ),
                                      Container(
                                        height: 500,
                                        width: 350,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                            color: Colors.white
                                            // color: Color.fromARGB(
                                            //     255, 239, 168, 168),
                                            ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 12.57, left: 23.21),
                                              child: SizedBox(
                                                  height: 80,
                                                  width: 166,
                                                  child: Image.asset(
                                                      "/customer/bitkub.png")),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 32),
                                              child: Container(
                                                height: 300,
                                                width: 286,
                                                // color: Colors.amber,
                                                child: Column(
                                                  children: [
                                                    Column(
                                                      children: [
                                                        Stack(
                                                          children: [
                                                            SizedBox(
                                                                width: 15.93,
                                                                height: 14,
                                                                child: Image.asset(
                                                                    "/customer/comma.png")),
                                                            Container(
                                                              height: 300,
                                                              width: 286,
                                                              // color:Colors.amber,
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            32),
                                                                    child: Text(
                                                                      "BitKub ให้ความสำคัญกับการคุ้มครอง ข้อมูลส่วนบุคคลของกลุ่มผู้ใช้งาน ดังนั้น เราจึงให้ความสำคัญอย่างมากเกี่ยวกับ การปฏิบัติตามกฎหมาย PDPA\nโดยเราเลือกใช้ระบบโมดูลที่มี Center\nเข้ามาช่วยในการบริหารจัดการข้อมูล\nคุ้มครองข้อมูลส่วนบุคคลได้ครอบคลุม\nเพื่อให้ผู้ใช้บริการมั่นใจว่าข้อมูลของท่านจะได้รับการปกป้องและใช้งานอย่างสบายใจ",
                                                                      style: GoogleFonts.poppins(
                                                                          fontSize:
                                                                              16,
                                                                          color: Colors
                                                                              .black,
                                                                          fontWeight: FontWeight
                                                                              .w400,
                                                                          height:
                                                                              2),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Wrap(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 39.92,
                                                              top: 16.28),
                                                      child: SizedBox(
                                                          width: 54.77,
                                                          height: 57.16,
                                                          child: Image.asset(
                                                              "/customer/Jirayuth.png")),
                                                    ),
                                                    SizedBox(
                                                      width: 9.1,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 16.28),
                                                      child: Container(
                                                        // color: Colors.pink,
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                              child: Text(
                                                                "คุณจิรายุส ทรัพย์ศรีโสภา",
                                                                style: GoogleFonts.ibmPlexSansThai(
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    color: Colors
                                                                        .black),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                              ),
                                                            ),
                                                            Container(
                                                              // color:Colors.white,
                                                              child: Text(
                                                                "Founder & Group CEO",
                                                                style: GoogleFonts.poppins(
                                                                    fontSize:
                                                                        15,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            87,
                                                                            87,
                                                                            87)),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                              ),
                                                            )
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
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 168, left: 30),
                                        child: Container(
                                          height: 340,
                                          width: 445,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                              color: Colors.white
                                              // color: Color.fromARGB(
                                              //     255, 239, 168, 168),
                                              ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 23.57, left: 42.38),
                                                child: SizedBox(
                                                    height: 41.85,
                                                    width: 197.59,
                                                    child: Image.asset(
                                                        "/customer/viriya-logo.png")),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 32, top: 38.5),
                                                child: Container(
                                                  height: 128,
                                                  width: 400,
                                                  // color: Colors.amber,
                                                  child: Column(
                                                    children: [
                                                      Column(
                                                        children: [
                                                          Stack(
                                                            children: [
                                                              SizedBox(
                                                                  width: 15.93,
                                                                  height: 14,
                                                                  child: Image
                                                                      .asset(
                                                                          "/customer/comma.png")),
                                                              Container(
                                                                height: 128,
                                                                width: 400,
                                                                // color:Colors.amber,
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsets
                                                                              .only(
                                                                          left:
                                                                              32),
                                                                      child:
                                                                          Text(
                                                                        "เรามองเห็นภาพกว้างของการทำ PDPA ได้ชัดเจนยิ่งขึ้น\nเมื่อทีม wisework เข้ามาให้คำแนะนำและวางแผนระบบ\nทำให้เรามั่นใจว่าการดำเนินการของขั้นตอนต่างๆ เป็นไป\nตามกรอบที่กฎหมายกำหนด ครอบคลุมทุกภาคธุรกิจ",
                                                                        style: GoogleFonts.poppins(
                                                                            fontSize:
                                                                                16,
                                                                            color:
                                                                                Colors.black,
                                                                            fontWeight: FontWeight.w400,
                                                                            height: 1.5),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Wrap(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 39.92,
                                                                top: 16.28),
                                                        child: SizedBox(
                                                            width: 54.77,
                                                            height: 57.16,
                                                            child: Image.asset(
                                                                "/customer/Amorn.png")),
                                                      ),
                                                      SizedBox(
                                                        width: 9.1,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                top: 16.28),
                                                        child: Container(
                                                          // color: Colors.pink,
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                child: Text(
                                                                  "คุณอมร ทองธิว",
                                                                  style: GoogleFonts.ibmPlexSansThai(
                                                                      fontSize:
                                                                          18,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      color: Colors
                                                                          .black),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                ),
                                                              ),
                                                              Container(
                                                                // color:Colors.white,
                                                                child: Text(
                                                                  "กรรมการและรองกรรมการผู้จัดการ",
                                                                  style: GoogleFonts.poppins(
                                                                      fontSize:
                                                                          15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      color: Color.fromARGB(
                                                                          255,
                                                                          87,
                                                                          87,
                                                                          87)),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                ),
                                                              )
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
                                ],
                              ),
                            ),
                            Container(
                              // height: 100,
                              margin: EdgeInsets.all(20),
                              width: 1400,
                              color: Colors.red,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('Card 2'),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Text('Content 2'),
                                  Text("current page is $_current")
                                ],
                              ),
                            ),
                            Container(
                              // height: 100,
                              margin: EdgeInsets.all(20),
                              width: 1400,
                              color: Colors.brown,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('Card 3'),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Text('Content 3'),
                                  Text("current page is $_current")
                                ],
                              ),
                            ),
                            Container(
                              // height: 100,
                              margin: EdgeInsets.all(20),
                              width: 1400,
                              color: Colors.green,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('Card 4'),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Text('Content 4'),
                                  Text("current page is $_current")
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: AnimatedSmoothIndicator(
                            activeIndex: _current,
                            count: 4,
                            effect: CustomizableEffect(
                              activeDotDecoration: DotDecoration(
                                width: 16,
                                height: 6,
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              dotDecoration: DotDecoration(
                                width: 10,
                                height: 4,
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(50),
                                verticalOffset: 0,
                              ),
                              spacing: 6.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

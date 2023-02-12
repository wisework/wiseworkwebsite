import 'dart:html';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:wiseintern/home/carousel.dart';

import '../responsive.dart';
import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/model/package.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PackagesPage extends StatefulWidget {
  @override
  _DestinationCarouselState createState() => _DestinationCarouselState();
}

class _DestinationCarouselState extends State<PackagesPage> {
  final String imagePath = 'assets/carousel/';

  final CarouselController _controller = CarouselController();

  List _isHovering = [false, false, false, false, false, false, false];
  List _isSelected = [true, false, false, false, false, false, false];

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    final express = [
      Package(
        title: !Responsive.isMobile(context)
            ? 'Support Module วัตถุประสงค์หลัก PDPA'
            : 'Module วัตถุประสงค์หลัก PDPA',
        children: [
          "PD Management",
          "DPIA & Risk Management",
          "Cookies & Consent Management"
        ],
        position: false,
      ),
      Package(
        title: "Standard Support 8x5",
        children: [],
        position: false,
      ),
      Package(
        title: "API สามารถ Export ได้เท่านั้น",
        children: [],
        position: false,
      ),
      Package(
        title: !Responsive.isMobile(context)
            ? "Concurrent Users = 5, Storage 10 GB ~100,000  Data Subject  "
            : "Concurrent Users = 5 \n Storage 10 GB \n~100,000  Data Subject  ",
        children: [],
        position: false,
      ),
      Package(
        title: Responsive.isDesktop(context)
            ? "เหมาะสำหรับองค์กรที่เก็บรวบรวมข้อมูลส่วนบุคคล และข้อมูลส่วนอ่อนไหว จำนวนมาก"
            : Responsive.isTablet(context)
                ? "เหมาะสำหรับองค์กรที่เก็บรวบรวมข้อมูลส่วน\nบุคคล และข้อมูลส่วนอ่อนไหว จำนวนมาก"
                : "เหมาะสำหรับองค์กรที่มีการเก็บรวบรวมข้อมูลจำนวนมาก",
        children: [],
        position: false,
      ),
    ];
    final standard = [
      Package(
        title: "ใช้งานระบบได้ครบถ้วนสมบูรณ์ตาม PDPA",
        children: [],
        position: Responsive.isDesktop(context) ? true : false,
      ),
      Package(
        title: "ติดตั้งได้ทั้ง On-Premise หรือ On-Cloud",
        children: [],
        position: Responsive.isDesktop(context) ? true : false,
      ),
      Package(
        title: !Responsive.isMobile(context)
            ? "พัฒนาเพิ่มเติมได้ตามความต้องการ"
            : "พัฒนาเพิ่มเติมตามความต้องการ",
        children: [],
        position: Responsive.isDesktop(context) ? true : false,
      ),
      Package(
        title: "Standard Support 8x5",
        children: [],
        position: Responsive.isDesktop(context) ? true : false,
      ),
      Package(
        title: !Responsive.isMobile(context)
            ? "มี API สำหรับ Import & Export ข้อมูล"
            : "มี API สำหรับ Import & Export",
        children: [],
        position: Responsive.isDesktop(context) ? true : false,
      ),
      Package(
        title: "องค์กรไม่ต้องการเชื่อมต่อกับระบบภายในเดิม ",
        children: [],
        position: Responsive.isDesktop(context) ? true : false,
      ),
      Package(
        title: !Responsive.isMobile(context)
            ? "เหมาะสำหรับองค์กรขนาดใหญ่ ธุรกิจเฉพาะ ต้องการปรับแต่งให้เข้ากับการทำงาน"
            : "เหมาะสำหรับองค์กรขนาดใหญ่ปรับแต่งให้เข้ากับการทำงาน",
        children: [],
        position: Responsive.isDesktop(context) ? true : false,
      ),
    ];
    final enterprise = [
      Package(
        title: Responsive.isDesktop(context)
            ? "ใช้งานระบบได้ครบถ้วนสมบูรณ์ตาม PDPA พร้อมปรับแต่งและพัฒนาได้ตามต้องการ"
            : Responsive.isTablet(context)
                ? "ใช้งานระบบได้ครบถ้วนสมบูรณ์ตาม PDPA\n พร้อมปรับแต่งและพัฒนาได้ตามต้องการ"
                : "ใช้งานระบบได้ครบถ้วนสมบูรณ์ตาม PDPA พร้อมปรับแต่งและพัฒนาได้ตามต้องการ",
        children: [],
        position: false,
      ),
      Package(
        title: !Responsive.isMobile(context)
            ? "ติดตั้งได้ทั้ง On-Premise หรือ On-Cloud"
            : "ติดตั้ง On-Premise/On-Cloud",
        children: [],
        position: false,
      ),
      Package(
        title: !Responsive.isMobile(context)
            ? "รองรับการทำงานแบบ Multi-tenant"
            : "รองรับการทำงาน Multi-tenant",
        children: [],
        position: false,
      ),
      Package(
        title: "Premium Support 24X7",
        children: [],
        position: false,
      ),
      Package(
        title: !Responsive.isMobile(context)
            ? "มี API สำหรับ Import & Export ข้อมูล "
            : "มี API สำหรับ Import & Export",
        children: [],
        position: false,
      ),
      Package(
        title: Responsive.isDesktop(context)
            ? "เหมาะสำหรับองค์กรขนาดใหญ่ที่มีสาขา มีบริษัทในเครือ ต้องการ Security ที่สามารถควบคุมเองได้ทั้งหมด"
            : Responsive.isTablet(context)
                ? "เหมาะสำหรับองค์กรขนาดใหญ่ที่มีสาขา \nมีบริษัทในเครือ ต้องการ Security \nที่สามารถควบคุมเองได้ทั้งหมด"
                : "เหมาะสำหรับองค์กรขนาดใหญ่ที่มีสาขา มีบริษัทในเครือ ต้องการ Security ที่ควบคุมเองได้ทั้งหมด",
        children: [],
        position: false,
      ),
    ];

    final CarouselController _controller = CarouselController();

    // List _isHovering = [false, false, false];
    List _isSelected = [true, false, false];

    int _current = 0;
    return Center(
      child: Container(
        width: 1440,
        color: Color.fromARGB(155, 232, 242, 254),
        child: Column(
          children: [
            SizedBox(
              height: Responsive.isDesktop(context)
                  ? 71.52
                  : Responsive.isTablet(context)
                      ? 37
                      : 47,
            ),
            !Responsive.isMobile(context)
                ? Container(
                    padding: const EdgeInsets.only(left: 15),
                    height: Responsive.isDesktop(context) ? 140 : 125,
                    width: Responsive.isDesktop(context) ? 1440 : 1440,
                    child: Center(
                      child: RichText(
                          text: TextSpan(
                        style: GoogleFonts.nunitoSans(
                          fontSize: Responsive.isDesktop(context) ? 48 : 36,
                          fontWeight: FontWeight.w700,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'เลือก ',
                              style: TextStyle(color: Colors.black)),
                          TextSpan(
                              text: 'แพ็กเกจ',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 75, 195, 211))),
                          TextSpan(
                              text: ' ที่เหมาะกับธุรกิจของคุณ ?',
                              style: TextStyle(color: Colors.black))
                        ],
                      )),
                    ))
                : Container(
                    padding: const EdgeInsets.only(left: 0),
                    height: 75,
                    width: 287,
                    child: Center(
                      child: Column(
                        children: [
                          RichText(
                              text: TextSpan(
                            style: GoogleFonts.nunitoSans(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'เลือก ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                  )),
                              TextSpan(
                                  text: 'แพ็กเกจ',
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 75, 195, 211))),
                            ],
                          )),
                          Text(' ที่เหมาะกับธุรกิจของคุณ ?',
                              style: GoogleFonts.nunitoSans(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                              ))
                        ],
                      ),
                    )),
            SizedBox(
              height: Responsive.isDesktop(context)
                  ? 52.72
                  : Responsive.isTablet(context)
                      ? 40
                      : 45,
            ),
            Responsive.isDesktop(context)
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      PackageCard(
                        packageicon: 'assets/packages/cloud.png',
                        title: 'Express',
                        lisence: 'SaaS',
                        packages: express,
                        buttoncolor: true,
                        firstbox: true,
                        middlebox: false,
                        lastbox: false,
                      ),
                      SizedBox(width: 23),
                      PackageCard(
                        packageicon: 'assets/packages/white_clouds.png',
                        title: 'Standard',
                        lisence: 'Subscriptions License',
                        packages: standard,
                        backgroundcolor: Color.fromARGB(
                          255,
                          5,
                          45,
                          97,
                        ),
                        buttoncolor: false,
                        firstbox: false,
                        middlebox: true,
                        lastbox: false,
                      ),
                      SizedBox(width: 16),
                      PackageCard(
                        packageicon: 'assets/packages/rainbow_cloud.png',
                        title: 'Enterprise',
                        lisence: 'Perpreptual License',
                        packages: enterprise,
                        buttoncolor: true,
                        firstbox: false,
                        middlebox: false,
                        lastbox: true,
                      )
                    ],
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CarouselSlider(
                        items: [
                          PackageCard(
                            packageicon: 'assets/packages/cloud.png',
                            title: 'Express',
                            lisence: 'SaaS',
                            packages: express,
                            buttoncolor: true,
                            firstbox: true,
                            middlebox: false,
                            lastbox: false,
                          ),
                          PackageCard(
                            packageicon: 'assets/packages/clouds.png',
                            title: 'Standard',
                            lisence: 'Subscriptions License',
                            packages: standard,
                            buttoncolor: false,
                            firstbox: false,
                            middlebox: true,
                            lastbox: false,
                          ),
                          PackageCard(
                            packageicon: 'assets/packages/rainbow_cloud.png',
                            title: 'Enterprise',
                            lisence: 'Perpreptual License',
                            packages: enterprise,
                            buttoncolor: true,
                            firstbox: false,
                            middlebox: false,
                            lastbox: true,
                          )
                        ],
                        options: CarouselOptions(
                            enableInfiniteScroll: true,
                            scrollPhysics: PageScrollPhysics(),
                            aspectRatio: Responsive.isTablet(context)
                                ? 1 / 1.03
                                : 1 / 1.60,
                            autoPlay: false,
                            viewportFraction:
                                Responsive.isTablet(context) ? 0.67 : 0.82,
                            onPageChanged: (index, reason) {
                              setState(() {
                                _current = index;
                                for (int i = 0; i < index; i++) {
                                  if (i == index) {
                                    _isSelected[i] = true;
                                  } else {
                                    _isSelected[i] = false;
                                  }
                                }
                              });
                            }),
                        carouselController: _controller,
                      ),
                      // SizedBox(height: 10),
                      Container(
                        child: AnimatedSmoothIndicator(
                            activeIndex: _current,
                            count: 3,
                            effect: ScaleEffect(
                                activePaintStyle: PaintingStyle.stroke,
                                scale: 1.3,
                                activeStrokeWidth: 0.5,
                                dotWidth: 16,
                                dotHeight: 16,
                                dotColor: Color.fromARGB(255, 5, 45, 97))),
                      ),
                    ],
                  ),
            SizedBox(
              height: Responsive.isDesktop(context)
                  ? 94
                  : Responsive.isTablet(context)
                      ? 40
                      : 76,
            ),
          ],
        ),
      ),
    );
  }
}

class PackageCard extends StatelessWidget {
  const PackageCard(
      {super.key,
      required this.packageicon,
      required this.title,
      required this.lisence,
      required this.packages,
      this.backgroundcolor,
      required this.buttoncolor,
      required this.middlebox,
      required this.firstbox,
      required this.lastbox});
  final String packageicon;
  final String title;
  final String lisence;
  final List<Package> packages;
  final Color? backgroundcolor;
  final bool buttoncolor;
  final bool firstbox;
  final bool middlebox;
  final bool lastbox;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: middlebox ? 0 : 28),
          Container(
            padding: const EdgeInsets.only(left: 0),
            decoration: BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Responsive.isDesktop(context)
                        ? Color.fromARGB(0, 255, 255, 255)
                        : middlebox
                            ? Color.fromARGB(59, 0, 0, 0)
                            : Color.fromARGB(0, 255, 255, 255),
                    blurRadius: 3.0,
                    offset: Offset(0.0, 4.0))
              ],
              borderRadius: Responsive.isDesktop(context)
                  ? firstbox
                      ? BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20))
                      : lastbox
                          ? BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20))
                          : BorderRadius.circular(20)
                  : BorderRadius.circular(20),
              color: backgroundcolor ?? Color.fromARGB(255, 255, 255, 255),
            ),
            height: !Responsive.isMobile(context)
                ? middlebox
                    ? 719
                    : 749
                : 534,
            width: Responsive.isDesktop(context)
                ? firstbox
                    ? 465
                    : middlebox
                        ? 477
                        : 459
                : Responsive.isTablet(context)
                    ? 490
                    : 296,
            // padding: EdgeInsets.all(5.0),
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 27,
                    ),
                    Container(
                      height: 51,
                      width: Responsive.isDesktop(context)
                          ? 83
                          : Responsive.isTablet(context)
                              ? 83
                              : 50,
                      child: SizedBox(
                          height: Responsive.isDesktop(context)
                              ? 51
                              : Responsive.isTablet(context)
                                  ? 40
                                  : firstbox
                                      ? 34.3
                                      : middlebox
                                          ? 50
                                          : 30.72,
                          width: Responsive.isDesktop(context)
                              ? firstbox
                                  ? 45
                                  : 83
                              : Responsive.isTablet(context)
                                  ? 40
                                  : 50,
                          child: Image.asset(packageicon)),
                    ),
                    Container(
                        height: 40,
                        padding: EdgeInsets.only(
                            left: Responsive.isTablet(context) ? 15 : 36.0,
                            top: Responsive.isTablet(context) ? 0 : 10),
                        child: Text(
                          title,
                          style: GoogleFonts.ibmPlexSansThai(
                              color: Responsive.isDesktop(context)
                                  ? middlebox
                                      ? Colors.white
                                      : Colors.black
                                  : Colors.black,
                              fontSize: Responsive.isDesktop(context)
                                  ? 32
                                  : Responsive.isTablet(context)
                                      ? 32
                                      : 20,
                              fontWeight: FontWeight.w700),
                        )),
                  ],
                ),
                SizedBox(
                  height: !Responsive.isMobile(context) ? 38 : 0,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: packages.length,
                    itemBuilder: (context, index) {
                      return Buildpackagetile(package: packages[index]);
                    },
                  ),
                ),
                SizedBox(height: !Responsive.isMobile(context) ? 5 : 0),
                Transform.translate(
                  offset: Offset(
                      Responsive.isDesktop(context)
                          ? -25
                          : Responsive.isTablet(context)
                              ? -20
                              : -20,
                      Responsive.isDesktop(context)
                          ? 0
                          : Responsive.isTablet(context)
                              ? 0
                              : 0),
                  child: SizedBox(
                    width: !Responsive.isMobile(context) ? 352 : 200,
                    child: DottedLine(
                      dashColor: Responsive.isDesktop(context)
                          ? middlebox
                              ? Colors.white
                              : Color.fromARGB(255, 169, 169, 170)
                          : Color.fromARGB(255, 169, 169, 170),
                      dashGapLength: 3,
                      dashLength: 5,
                    ),
                  ),
                ),
                SizedBox(height: 19),
                Transform.translate(
                  offset: Offset(
                      Responsive.isDesktop(context)
                          ? 60
                          : Responsive.isTablet(context)
                              ? 75
                              : 50,
                      Responsive.isDesktop(context)
                          ? 0
                          : Responsive.isTablet(context)
                              ? 0
                              : 0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        lisence,
                        style: GoogleFonts.ibmPlexSansThai(
                            color: Responsive.isDesktop(context)
                                ? middlebox
                                    ? Colors.white
                                    : Colors.black
                                : Colors.black,
                            fontSize: !Responsive.isMobile(context) ? 28 : 16,
                            fontWeight: FontWeight.w700),
                      )),
                ),
                SizedBox(height: Responsive.isDesktop(context) ? 22 : 28),
                buttoncolor
                    ? SizedBox(
                        width: !Responsive.isMobile(context) ? 352 : 160.56,
                        height: !Responsive.isMobile(context) ? 64 : 28,
                        child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                width: 1.0,
                                color: Color.fromARGB(255, 75, 195, 211),
                              ),
                              backgroundColor: Color.fromARGB(19, 75, 195, 211),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                            child: Text(
                              ' See more',
                              style: GoogleFonts.ibmPlexSansThai(
                                  fontSize:
                                      !Responsive.isMobile(context) ? 22 : 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            )),
                      )
                    : SizedBox(
                        width: !Responsive.isMobile(context) ? 367 : 160.56,
                        height: !Responsive.isMobile(context) ? 64 : 28,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(75, 195, 211, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                            child: Text(
                              ' See more',
                              style: GoogleFonts.ibmPlexSansThai(
                                  fontSize:
                                      !Responsive.isMobile(context) ? 22 : 16,
                                  fontWeight: FontWeight.w600),
                            )),
                      ),
                Responsive.isDesktop(context)
                    ? SizedBox(height: middlebox ? 40 : 70)
                    : Responsive.isTablet(context)
                        ? SizedBox(height: middlebox ? 40 : 70)
                        : SizedBox(height: 32),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Buildpackagetile extends StatelessWidget {
  const Buildpackagetile({super.key, required this.package});
  final Package package;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          dense: Responsive.isDesktop(context)
              ? false
              : Responsive.isTablet(context)
                  ? false
                  : true,
          visualDensity: VisualDensity(
              horizontal: Responsive.isDesktop(context)
                  ? 0
                  : Responsive.isTablet(context)
                      ? 0
                      : -4,
              vertical: Responsive.isDesktop(context)
                  ? 0
                  : Responsive.isTablet(context)
                      ? -2
                      : -4),
          horizontalTitleGap: 10,
          leading: Transform.translate(
            offset: Offset(
                Responsive.isDesktop(context)
                    ? -10
                    : Responsive.isTablet(context)
                        ? 25
                        : 8,
                Responsive.isDesktop(context)
                    ? 0
                    : Responsive.isTablet(context)
                        ? 0
                        : -2),
            child: SizedBox(
                width: !Responsive.isMobile(context) ? 20.83 : 12.5,
                height: !Responsive.isMobile(context) ? 20.83 : 12.5,
                child: Image(image: AssetImage("assets/packages/check.png"))),
          ),
          title: Transform.translate(
            offset: Offset(
                Responsive.isDesktop(context)
                    ? -30
                    : Responsive.isTablet(context)
                        ? 5
                        : -10,
                Responsive.isDesktop(context)
                    ? 2.5
                    : Responsive.isTablet(context)
                        ? 0
                        : 0),
            child: Text(
              package.title,
              style: GoogleFonts.ibmPlexSansThai(
                  color: package.position
                      ? Color.fromARGB(255, 255, 255, 255)
                      : Colors.black,
                  fontSize: !Responsive.isMobile(context) ? 20 : 16,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: package.children.length,
          itemBuilder: (context, index) {
            return ListTile(
              // contentPadding: EdgeInsets.symmetric(horizontal: 0.0, vertical: -50.0),
              dense: true,
              visualDensity: VisualDensity(
                  horizontal: Responsive.isDesktop(context)
                      ? 0
                      : Responsive.isTablet(context)
                          ? 0
                          : -4,
                  vertical: Responsive.isDesktop(context)
                      ? 0
                      : Responsive.isTablet(context)
                          ? -4
                          : -4),
              horizontalTitleGap: 8,
              title: Transform.translate(
                offset: Offset(
                    Responsive.isDesktop(context)
                        ? 40
                        : Responsive.isTablet(context)
                            ? 40
                            : 15,
                    Responsive.isDesktop(context)
                        ? 0
                        : Responsive.isTablet(context)
                            ? 0
                            : 0),
                child: Text(package.children[index],
                    style: GoogleFonts.ibmPlexSansThai(
                        fontSize: !Responsive.isMobile(context) ? 18 : 14,
                        fontWeight: FontWeight.w400)),
              ),

              leading: Transform.translate(
                offset: Offset(
                    Responsive.isDesktop(context)
                        ? 70
                        : Responsive.isTablet(context)
                            ? 70
                            : 40,
                    Responsive.isDesktop(context)
                        ? 0
                        : Responsive.isTablet(context)
                            ? 0
                            : 0),
                child: SizedBox(
                    width: !Responsive.isMobile(context) ? 12 : 10,
                    height: !Responsive.isMobile(context) ? 12 : 10,
                    child: Image(image: AssetImage("packages/record.png"))),
              ),
            );
          },
        ),
      ],
    );
  }
}

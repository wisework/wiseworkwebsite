import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/model/package.dart';

class PackagesPage extends StatelessWidget {
  const PackagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final express = [
      Package(title: 'Support Module วัตถุประสงค์หลัก PDPA', children: [
        "PD Management",
        "DPIA & Risk Management",
        "Cookies & Consent Management"
      ]),
      Package(title: "Standard Support 8x5", children: []),
      Package(title: "API สามารถ Export ได้เท่านั้น", children: []),
      Package(
          title: "Concurrent Users = 5, Storage 10 GB ~100,000  Data Subject  ",
          children: []),
      Package(
          title:
              "เหมาะสำหรับองค์กรที่เก็บรวบรวมข้อมูลส่วนบุคคล และข้อมูลส่วนอ่อนไหว จำนวนมาก",
          children: []),
    ];
    final standard = [
      Package(title: "ใช้งานระบบได้ครบถ้วนสมบูรณ์ตาม PDPA", children: []),
      Package(title: "ติดตั้งได้ทั้ง On-Premise หรือ On-Cloud", children: []),
      Package(title: "พัฒนาเพิ่มเติมได้ตามความต้องการ", children: []),
      Package(title: "Standard Support 8x5", children: []),
      Package(title: "มี API สำหรับ Import & Export ข้อมูล", children: []),
      Package(
          title: "องค์กรไม่ต้องการเชื่อมต่อกับระบบภายในเดิม ", children: []),
      Package(
          title:
              "เหมาะสำหรับองค์กรขนาดใหญ่ ธุรกิจเฉพาะ ต้องการปรับแต่งให้เข้ากับการทำงาน",
          children: []),
    ];
    final enterprise = [
      Package(
          title:
              "ใช้งานระบบได้ครบถ้วนสมบูรณ์ตาม PDPA พร้อมปรับแต่งและพัฒนาได้ตามต้องการ",
          children: []),
      Package(title: "ติดตั้งได้ทั้ง On-Premise หรือ On-Cloud", children: []),
      Package(title: "รองรับการทำงานแบบ Multi-tenant", children: []),
      Package(title: "Premium Support 24X7", children: []),
      Package(title: "มี API สำหรับ Import & Export ข้อมูล ", children: []),
      Package(
          title:
              "เหมาะสำหรับองค์กรขนาดใหญ่ที่มีสาขา มีบริษัทในเครือ ต้องการ Security ที่สามารถควบคุมเองได้ทั้งหมด",
          children: []),
    ];

    bool _isLargeScreen() {
      final double screenWidth = MediaQuery.of(context).size.width;
      return screenWidth > 1400;
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 71.52,
              ),
              Container(
                  height: 140,
                  width: 1440,
                  child: Center(
                    child: RichText(
                        text: TextSpan(
                      style: GoogleFonts.nunitoSans(
                        fontSize: 48,
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
                            style: TextStyle(color: Colors.black)),
                      ],
                    )),
                  )),
              SizedBox(
                height: 52.72,
              ),
              _isLargeScreen()
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        PackageCard(
                          packageicon: 'assets/packages/cloud.png',
                          title: 'Express',
                          lisence: 'SaaS',
                          packages: express,
                          buttoncolor: true,
                        ),
                        PackageCard(
                          packageicon: 'assets/packages/clouds.png',
                          title: 'Standard',
                          lisence: 'Subscriptions License',
                          packages: standard,
                          backgroundcolor: Color.fromARGB(255, 232, 242, 254),
                          buttoncolor: false,
                        ),
                        PackageCard(
                          packageicon: 'assets/packages/rainbow_cloud.png',
                          title: 'Enterprise',
                          lisence: 'Perpreptual License',
                          packages: enterprise,
                          buttoncolor: true,
                        )
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        PackageCard(
                          packageicon: 'assets/packages/cloud.png',
                          title: 'Express',
                          lisence: 'SaaS',
                          packages: express,
                          buttoncolor: true,
                        ),
                        SizedBox(height: 22),
                        PackageCard(
                          packageicon: 'assets/packages/clouds.png',
                          title: 'Standard',
                          lisence: 'Subscriptions License',
                          packages: standard,
                          backgroundcolor: Color.fromARGB(255, 232, 242, 254),
                          buttoncolor: false,
                        ),
                        SizedBox(height: 22),
                        PackageCard(
                          packageicon: 'assets/packages/rainbow_cloud.png',
                          title: 'Enterprise',
                          lisence: 'Perpreptual License',
                          packages: enterprise,
                          buttoncolor: true,
                        )
                      ],
                    )
            ],
          ),
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
      required this.buttoncolor});
  final String packageicon;
  final String title;
  final String lisence;
  final List<Package> packages;
  final Color? backgroundcolor;
  final bool buttoncolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: backgroundcolor ?? Color.fromARGB(255, 255, 255, 255),
      ),
      height: 749,
      width: 460,
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                  height: 45.28, width: 66, child: Image.asset(packageicon)),
              Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    title,
                    style: GoogleFonts.ibmPlexSansThai(
                        fontSize: 32, fontWeight: FontWeight.w700),
                  )),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: packages.length,
              itemBuilder: (context, index) {
                return Buildpackagetile(package: packages[index]);
              },
            ),
          ),
          SizedBox(height: 52),
          Transform.translate(
            offset: Offset(-25.0, 0.0),
            child: SizedBox(
              width: 352,
              child: DottedLine(
                dashColor: Color.fromARGB(255, 122, 122, 122),
                dashGapLength: 3,
                dashLength: 5,
              ),
            ),
          ),
          SizedBox(height: 19),
          Transform.translate(
            offset: Offset(25.0, 0.0),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  lisence,
                  style: GoogleFonts.ibmPlexSansThai(
                      fontSize: 28, fontWeight: FontWeight.w700),
                )),
          ),
          SizedBox(height: 22),
          buttoncolor
              ? SizedBox(
                  width: 352,
                  height: 64,
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
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      )),
                )
              : SizedBox(
                  width: 352,
                  height: 64,
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
                            fontSize: 22, fontWeight: FontWeight.w600),
                      )),
                ),
          SizedBox(height: 60),
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
          dense: true,
          leading: Transform.translate(
            offset: Offset(-10, 0),
            child: SizedBox(
                width: 20.83,
                height: 20.83,
                child: Image(image: AssetImage("assets/packages/check.png"))),
          ),
          title: Transform.translate(
            offset: Offset(-30, 2.5),
            child: Text(
              package.title,
              style: GoogleFonts.ibmPlexSansThai(
                  fontSize: 20, fontWeight: FontWeight.w400),
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
              title: Text(package.children[index],
                  style: GoogleFonts.ibmPlexSansThai(
                      fontSize: 18, fontWeight: FontWeight.w400)),
              leading: Transform.translate(
                offset: Offset(29, 0),
                child: SizedBox(
                    width: 12,
                    height: 12,
                    child: Image(image: AssetImage("packages/record.png"))),
              ),
            );
          },
        ),
      ],
    );
  }
}

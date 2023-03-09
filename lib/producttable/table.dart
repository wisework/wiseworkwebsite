import 'dart:html';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import '../responsive.dart';
import 'package:google_fonts/google_fonts.dart';

class CompareTable extends StatefulWidget {
  const CompareTable({Key? key}) : super(key: key);

  @override
  State<CompareTable> createState() => _CompareTableState();
}

class Model {
  final String title;
  final String children;
  // final bool position;
  // final bool dense;
  Model({
    required this.title,
    required this.children,
    // required this.position,
    // required this.dense,
  });

  Model copyWith({
    String? title,
    String? children,
    /*bool? position, bool? dense*/
  }) {
    return Model(
      title: title ?? this.title,
      children: children ?? this.children,
      //   position: position ?? this.position,
      //   dense: dense ?? this.dense,
    );
  }
}

class _CompareTableState extends State<CompareTable> {
  int? hoveredIndex;

  @override
  Widget build(BuildContext context) {
    final details = [
      Model(
        title: 'Modules',
        children: "Support Modules",
      ),
      Model(
        title: "PD Management",
        children: "จัดการบันทึกรายการข้อมูลส่วนบุคคล และการไหลของข้อมูล",
      ),
      Model(
        title: "DPIA & Risk Management",
        children: "บริหารความเสี่ยงและผลกระทบจากข้อมูลส่วนบุคคล",
      ),
      Model(
        title: "Cookies Consent",
        children: "การขอความยินยอมจากเจ้าของข้อมูล และการบริหารจัดการคุ้กกี้",
      ),
      Model(
        title: "Consent Management",
        children: "การบริหารจัดการการให้ความยินยอม",
      ),
      Model(
        title: 'DATA Subject Right Management',
        children: "บริหารการขอใช้สิทธิ์จากเจ้าของข้อมูลส่วนบุคคล",
      ),
      Model(
        title: "DATA Breach",
        children: "บริหารกรณีเกิดข้อมูลรั่วไหล",
      ),
      Model(
        title: "Audit & Gap Management",
        children: "บริหารงานตรวจสอบ และการทำ GAP Analysis",
      ),
      Model(
        title: "Policy & Notices Management",
        children: "บริหารการสื่อสารนโยบาย และประกาศความเป็นส่วนตัว",
      ),
      Model(
        title: "Data Discover",
        children: "ค้นหาข้อมูลส่วนตัวในระบบสารสนเทศ",
      ),
      Model(
        title: 'Executive Support System',
        children: "บริหารงานและจัดการรายงานสำหรับผู้บริหาร",
      ),
      Model(
        title: "Legitimate Interest Assessment",
        children: "การประเมินการนำฐานกฎหมายมาใช้",
      ),
      Model(
        title: "Concurrent User",
        children: "จำนวนผู้เข้าใช้งานระบบร่วมกัน",
      ),
      Model(
        title: "Storage",
        children: "พื้นที่จัดเก็บข้อมูล",
      ),
      Model(
        title: "Number of DATA Subjectt",
        children: "จำนวนการจัดเก็บ-จัดส่งข้อมูลส่วนบุคคล",
      ),
      Model(
        title: 'ดำเนินการตามพรบ. คุ้มครองข้อมูลส่วนบุคคล',
        children: " \n",
      ),
      Model(
        title: "On Cloud  / On-Premise",
        children: "ระบบการติดตั้ง",
      ),
      Model(
        title: "Custom Software Development",
        children: "พัฒนาเพิ่มเติมตามความต้องการ",
      ),
      Model(
        title: "Multi-Tenant",
        children: "รองรับการทำงานแบบ Multi-Tenant",
      ),
      Model(
        title: "Product Support",
        children: "การซัพพอร์ตผลิตภัณฑ์",
      ),
      Model(
        title: 'API for Import & Export',
        children: "ระบบการเชื่อมต่อข้อมูล",
      ),
    ];
    final express = [
      Model(
        title: 'Basic Modules',
        children: "(4 Modules)",
      ),
      Model(
        title: "Check",
        children: "",
      ),
      Model(
        title: "Lock",
        children: "",
      ),
      Model(
        title: "Check",
        children: "",
      ),
      Model(
        title: "Check",
        children: "",
      ),
      Model(
        title: "Check",
        children: "",
      ),
      Model(
        title: "Lock",
        children: "",
      ),
      Model(
        title: "Lock",
        children: "",
      ),
      Model(
        title: "Lock",
        children: "",
      ),
      Model(
        title: "Lock",
        children: "",
      ),
      Model(
        title: "Lock",
        children: "",
      ),
      Model(
        title: "Lock",
        children: "",
      ),
      Model(
        title: "5",
        children: "",
      ),
      Model(
        title: "10 GB",
        children: "",
      ),
      Model(
        title: "~ 100,000",
        children: "",
      ),
      Model(
        title:
            "มาตรา 19, มาตรา 20, มาตรา 21, มาตรา 23,\nมาตรา 26, มาตรา 30, มาตรา 37, มาตรา 39,\nมาตรา 41, มาตรา 42",
        children: "",
      ),
      Model(
        title: "On Cloud",
        children: "",
      ),
      Model(
        title: "Cross",
        children: "",
      ),
      Model(
        title: "Cross",
        children: "",
      ),
      Model(
        title: "8x5",
        children: "",
      ),
      Model(
        title: 'Export Only',
        children: "",
      ),
    ];
    final standard = [
      Model(
        title: 'Max Modules',
        children: "(11 Modules)",
      ),
      Model(
        title: "Check",
        children: "",
      ),
      Model(
        title: "Check",
        children: "",
      ),
      Model(
        title: "Check",
        children: "",
      ),
      Model(
        title: "Check",
        children: "",
      ),
      Model(
        title: "Check",
        children: "",
      ),
      Model(
        title: "Check",
        children: "",
      ),
      Model(
        title: "Check",
        children: "",
      ),
      Model(
        title: "Check",
        children: "",
      ),
      Model(
        title: "Check",
        children: "",
      ),
      Model(
        title: "Check",
        children: "",
      ),
      Model(
        title: "Check",
        children: "",
      ),
      Model(
        title: "10",
        children: "",
      ),
      Model(
        title: "100 GB",
        children: "",
      ),
      Model(
        title: "~ 1,000,000",
        children: "",
      ),
      Model(
        title: "Check",
        children: "\n",
      ),
      Model(
        title: "On Cloud/On-Premise",
        children: "",
      ),
      Model(
        title: "Cross",
        children: "",
      ),
      Model(
        title: "Cross",
        children: "",
      ),
      Model(
        title: "8x5",
        children: "",
      ),
      Model(
        title: 'Import & Export',
        children: "",
      ),
    ];
    final enterprise = [
      Model(
        title: 'Max Modules',
        children: "(11 Modules)",
      ),
      Model(
        title: "Check",
        children: "",
      ),
      Model(
        title: "Check",
        children: "",
      ),
      Model(
        title: "Check",
        children: "",
      ),
      Model(
        title: "Check",
        children: "",
      ),
      Model(
        title: "Check",
        children: "",
      ),
      Model(
        title: "Check",
        children: "",
      ),
      Model(
        title: "Check",
        children: "",
      ),
      Model(
        title: "Check",
        children: "",
      ),
      Model(
        title: "Check",
        children: "",
      ),
      Model(
        title: "Check",
        children: "",
      ),
      Model(
        title: "Check",
        children: "",
      ),
      Model(
        title: "Unlimited",
        children: "",
      ),
      Model(
        title: "Unlimited",
        children: "",
      ),
      Model(
        title: "~ 10,000,000",
        children: "",
      ),
      Model(
        title: "Check",
        children: "\n",
      ),
      Model(
        title: "On Cloud/On-Premise",
        children: "",
      ),
      Model(
        title: "Check",
        children: "",
      ),
      Model(
        title: "Check",
        children: "",
      ),
      Model(
        title: "24x7",
        children: "",
      ),
      Model(
        title: 'Import & Export',
        children: "",
      ),
    ];
    return Center(
      child: Container(
        color: Colors.white,
        width: 1440,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 64,
            ),
            Container(
              width: 1323,
              height: 2040,
              child: Expanded(
                child: Table(
                  columnWidths: {
                    0: FlexColumnWidth(48),
                    1: FlexColumnWidth(30),
                    2: FlexColumnWidth(25),
                    3: FlexColumnWidth(30),
                  },
                  // border: TableBorder.all(),
                  children: [
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 90),
                          child: Container(
                            width: 412,
                            height: 61,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1.0,
                                color: Color.fromARGB(255, 75, 195, 211),
                              ),
                              color: Color.fromARGB(255, 243, 246,
                                  249), // set the background color
                              borderRadius: BorderRadius.circular(
                                  30), // set the border radius
                            ),
                            child: Center(
                              child: Text(
                                'รายละเอียดแพ็กเกจ',
                                style: GoogleFonts.ibmPlexSansThai(
                                    fontSize: 32,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 75, 195, 211)),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Transform.translate(
                            offset: Offset(2, 0),
                            child: Container(
                              width: 263,
                              height: 61,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 75, 195,
                                    211), // set the background color
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                ), // set the border radius
                              ),
                              child: Transform.translate(
                                offset: Offset(-10, 3),
                                child: Text(
                                  textAlign: TextAlign.center,
                                  'Express',
                                  style: GoogleFonts.ibmPlexSansThai(
                                      fontSize: 32,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 263,
                          height: 61,

                          color: Color.fromARGB(
                              255, 75, 195, 211), // set the background color
                          // set the border radius

                          child: Transform.translate(
                            offset: Offset(0, 3),
                            child: Text(
                              textAlign: TextAlign.center,
                              'Standard',
                              style: GoogleFonts.ibmPlexSansThai(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20, bottom: 5),
                          child: Transform.translate(
                            offset: Offset(-2, 0),
                            child: Container(
                              width: 263,
                              height: 61,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 75, 195,
                                    211), // set the background color
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                ), // set the border radius
                              ),
                              child: Transform.translate(
                                offset: Offset(10, 3),
                                child: Text(
                                  textAlign: TextAlign.center,
                                  'Enterprise',
                                  style: GoogleFonts.ibmPlexSansThai(
                                      fontSize: 32,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1.0,
                            color: Color.fromARGB(255, 225, 232, 240),
                          ),
                        ),
                      ),
                      children: [
                        SizedBox(
                          width: 500,
                          height: 44,
                        ),
                        Center(
                          child: Text(
                            '(SaaS)',
                            style: GoogleFonts.ibmPlexSansThai(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 31, 31, 31)),
                          ),
                        ),
                        Center(
                          child: Text(
                            '(Subscriptions License)',
                            style: GoogleFonts.ibmPlexSansThai(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 31, 31, 31)),
                          ),
                        ),
                        Center(
                          child: Text(
                            '(Perpeptual License)',
                            style: GoogleFonts.ibmPlexSansThai(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 31, 31, 31)),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        SizedBox(
                          width: 500,
                          height: 1800,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: details.length,
                            itemBuilder: (BuildContext context, int index) {
                              return ListTile(
                                horizontalTitleGap: 1,
                                // minLeadingWidth: 30,
                                minVerticalPadding: 10,
                                dense: true,
                                visualDensity:
                                    VisualDensity(horizontal: -4, vertical: -4),
                                title: Transform.translate(
                                  offset: Offset(0, 0),
                                  child: Text(
                                    '${details[index].title}',
                                    style: GoogleFonts.ibmPlexSansThai(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                subtitle: Transform.translate(
                                  offset: Offset(0, 0),
                                  child: Text(
                                    '${details[index].children}',
                                    style: GoogleFonts.ibmPlexSansThai(
                                        letterSpacing: -0.5,
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          width: 500,
                          height: 1800,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: details.length,
                            itemBuilder: (BuildContext context, int index) {
                              Widget title = express[index].title == 'Lock'
                                  ? Transform.translate(
                                      offset: Offset(0, 25),
                                      child: SizedBox(
                                        height: 33,
                                        width: 28,
                                        child: Image(
                                            fit: BoxFit.fitHeight,
                                            image: AssetImage(
                                                "packages/lock.png")),
                                      ),
                                    )
                                  : express[index].title == 'Check'
                                      ? Transform.translate(
                                          offset: Offset(0, 25),
                                          child: SizedBox(
                                            height: 33,
                                            width: 33,
                                            child: Image(
                                                fit: BoxFit.fitHeight,
                                                image: AssetImage(
                                                    "packages/check.png")),
                                          ),
                                        )
                                      : express[index].title == 'Cross'
                                          ? Transform.translate(
                                              offset: Offset(0, 25),
                                              child: SizedBox(
                                                height: 33,
                                                width: 33,
                                                child: Image(
                                                    fit: BoxFit.fitHeight,
                                                    image: AssetImage(
                                                        "packages/cross.png")),
                                              ),
                                            )
                                          : Transform.translate(
                                              offset: Offset(0, 0),
                                              child: Center(
                                                child: Text(
                                                  textAlign: TextAlign.center,
                                                  '${express[index].title}',
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                          color: index == 20
                                                              ? Color.fromARGB(
                                                                  255,
                                                                  255,
                                                                  3,
                                                                  3)
                                                              : Colors.black,
                                                          wordSpacing: 0,
                                                          letterSpacing:
                                                              index == 15
                                                                  ? -1
                                                                  : 0,
                                                          fontSize: index == 15
                                                              ? 16
                                                              : 20,
                                                          fontWeight: index ==
                                                                  15
                                                              ? FontWeight.w400
                                                              : FontWeight
                                                                  .w700),
                                                ),
                                              ),
                                            );

                              return ListTile(
                                horizontalTitleGap: 1,
                                // minLeadingWidth: 30,
                                minVerticalPadding: 10,
                                dense: true,
                                visualDensity:
                                    VisualDensity(horizontal: -4, vertical: -4),
                                title: title,
                                subtitle: Transform.translate(
                                  offset: Offset(0, 0),
                                  child: Center(
                                    child: Text(
                                      '${express[index].children}',
                                      style: GoogleFonts.ibmPlexSansThai(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          width: 500,
                          height: 1800,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: standard.length,
                            itemBuilder: (BuildContext context, int index) {
                              Widget title = standard[index].title == 'Lock'
                                  ? Transform.translate(
                                      offset: Offset(0, 25),
                                      child: SizedBox(
                                        height: 33,
                                        width: 28,
                                        child: Image(
                                            fit: BoxFit.fitHeight,
                                            image: AssetImage(
                                                "packages/lock.png")),
                                      ),
                                    )
                                  : standard[index].title == 'Check'
                                      ? Transform.translate(
                                          offset:
                                              Offset(0, index == 15 ? 15 : 25),
                                          child: SizedBox(
                                            height: 33,
                                            width: 33,
                                            child: Image(
                                                fit: BoxFit.fitHeight,
                                                image: AssetImage(
                                                    "packages/check.png")),
                                          ),
                                        )
                                      : standard[index].title == 'Cross'
                                          ? Transform.translate(
                                              offset: Offset(0, 25),
                                              child: SizedBox(
                                                height: 33,
                                                width: 33,
                                                child: Image(
                                                    fit: BoxFit.fitHeight,
                                                    image: AssetImage(
                                                        "packages/cross.png")),
                                              ),
                                            )
                                          : Transform.translate(
                                              offset: Offset(0, 0),
                                              child: Center(
                                                child: Text(
                                                  '${standard[index].title}',
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                          color: index == 20
                                                              ? Color.fromARGB(
                                                                  255,
                                                                  75,
                                                                  196,
                                                                  213)
                                                              : Colors.black,
                                                          fontSize: index == 15
                                                              ? 16
                                                              : 20,
                                                          fontWeight: index ==
                                                                  15
                                                              ? FontWeight.w400
                                                              : FontWeight
                                                                  .w700),
                                                ),
                                              ),
                                            );

                              return ListTile(
                                horizontalTitleGap: 1,
                                // minLeadingWidth: 30,
                                minVerticalPadding: 10,
                                dense: true,
                                visualDensity:
                                    VisualDensity(horizontal: -4, vertical: -4),
                                title: title,
                                subtitle: Transform.translate(
                                  offset: Offset(0, 0),
                                  child: Center(
                                    child: Text(
                                      '${standard[index].children}',
                                      style: GoogleFonts.ibmPlexSansThai(
                                          height: index == 15 ? 2 : 0,
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          width: 500,
                          height: 1800,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: enterprise.length,
                            itemBuilder: (BuildContext context, int index) {
                              Widget title = enterprise[index].title == 'Lock'
                                  ? Transform.translate(
                                      offset: Offset(0, 25),
                                      child: SizedBox(
                                        height: 33,
                                        width: 28,
                                        child: Image(
                                            fit: BoxFit.fitHeight,
                                            image: AssetImage(
                                                "packages/lock.png")),
                                      ),
                                    )
                                  : enterprise[index].title == 'Check'
                                      ? Transform.translate(
                                          offset:
                                              Offset(0, index == 15 ? 15 : 25),
                                          child: SizedBox(
                                            height: 33,
                                            width: 33,
                                            child: Image(
                                                fit: BoxFit.fitHeight,
                                                image: AssetImage(
                                                    "packages/check.png")),
                                          ),
                                        )
                                      : enterprise[index].title == 'Cross'
                                          ? Transform.translate(
                                              offset: Offset(0, 25),
                                              child: SizedBox(
                                                height: 33,
                                                width: 33,
                                                child: Image(
                                                    fit: BoxFit.fitHeight,
                                                    image: AssetImage(
                                                        "packages/cross.png")),
                                              ),
                                            )
                                          : Transform.translate(
                                              offset: Offset(0, 0),
                                              child: Center(
                                                child: Text(
                                                  '${enterprise[index].title}',
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                          color: index == 20
                                                              ? Color.fromARGB(
                                                                  255,
                                                                  75,
                                                                  196,
                                                                  213)
                                                              : Colors.black,
                                                          fontSize: index == 15
                                                              ? 16
                                                              : 20,
                                                          fontWeight: index ==
                                                                  15
                                                              ? FontWeight.w400
                                                              : FontWeight
                                                                  .w700),
                                                ),
                                              ),
                                            );

                              return ListTile(
                                horizontalTitleGap: 1,
                                // minLeadingWidth: 30,
                                minVerticalPadding: 10,
                                dense: true,
                                visualDensity:
                                    VisualDensity(horizontal: -4, vertical: -4),
                                title: title,
                                subtitle: Transform.translate(
                                  offset: Offset(0, 0),
                                  child: Center(
                                    child: Text(
                                      '${enterprise[index].children}',
                                      style: GoogleFonts.ibmPlexSansThai(
                                          height: index == 15 ? 2 : 0,
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1.0,
                            color: Color.fromARGB(255, 225, 232, 240),
                          ),
                        ),
                      ),
                      children: [
                        SizedBox(
                          width: 500,
                          height: 130,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 44, right: 44),
                          child: SizedBox(
                            width: 218,
                            height: 64,
                            child: OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(
                                  width: 2.0,
                                  color: Color.fromARGB(255, 75, 195, 211),
                                ),
                                backgroundColor:
                                    Color.fromARGB(199, 243, 246, 249),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                              child: Text(
                                'Buy Now',
                                style: GoogleFonts.ibmPlexSansThai(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 0, 0, 0)),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 22, right: 22),
                          child: SizedBox(
                            width: 218,
                            height: 64,
                            child: OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(
                                  width: 2.0,
                                  color: Color.fromARGB(255, 75, 195, 211),
                                ),
                                backgroundColor:
                                    Color.fromARGB(199, 243, 246, 249),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                              child: Text(
                                'Buy Now',
                                style: GoogleFonts.ibmPlexSansThai(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 0, 0, 0)),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 44, right: 44),
                          child: SizedBox(
                            width: 218,
                            height: 64,
                            child: OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(
                                  width: 2.0,
                                  color: Color.fromARGB(255, 75, 195, 211),
                                ),
                                backgroundColor:
                                    Color.fromARGB(199, 243, 246, 249),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                              child: Text(
                                'Buy Now',
                                style: GoogleFonts.ibmPlexSansThai(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 0, 0, 0)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 196,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 255, 255, 255),
                    Color.fromARGB(255, 232, 242, 254)
                  ],
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 49,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "รับคำปรึกษาจากทีมงานผู้เชี่ยวชาญของเรา ",
                            style: GoogleFonts.ibmPlexSans(
                                fontSize: 32,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 5, 45, 97)),
                          ),
                          Text(
                            "ให้เราช่วยวางแผนและให้คำแนะนำที่ดีที่สุดสำหรับองค์กรของคุณ",
                            style: GoogleFonts.ibmPlexSans(
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 57, 128, 237)),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      SizedBox(width: 48),
                      SizedBox(
                        width: 254,
                        height: 57,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(52, 145, 206, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                            child: Text(
                              'รับใบเสนอราคา',
                              style: GoogleFonts.ibmPlexSansThai(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            )),
                      ),
                      SizedBox(width: 16),
                      SizedBox(
                        width: 254,
                        height: 57,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(75, 195, 211, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                            child: Text(
                              'Request Demo',
                              style: GoogleFonts.ibmPlexSansThai(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 70,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

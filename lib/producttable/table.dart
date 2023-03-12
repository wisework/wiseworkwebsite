import 'dart:html';
import 'dart:math';
import 'package:flutter/material.dart';
import '../responsive.dart';
import 'package:google_fonts/google_fonts.dart';

class CompareTable extends StatefulWidget {
  const CompareTable({Key? key}) : super(key: key);

  @override
  State<CompareTable> createState() => _CompareTableState();
}

class EXModel {
  final String details;
  final String detailsch;
  final String express;
  final String standard;
  final String enterprise;
  EXModel({
    required this.details,
    required this.detailsch,
    required this.express,
    required this.standard,
    required this.enterprise,
  });

  EXModel copyWith({
    String? details,
    String? detailsch,
    String? express,
    String? standard,
    String? enterprise,
  }) {
    return EXModel(
      details: details ?? this.details,
      detailsch: detailsch ?? this.detailsch,
      express: express ?? this.express,
      standard: standard ?? this.standard,
      enterprise: enterprise ?? this.enterprise,
    );
  }
}

class _CompareTableState extends State<CompareTable> {
  @override
  Widget build(BuildContext context) {
    final List<EXModel> table = [
      // EXModel(
      //   details: '',
      //   detailsch: "",
      //   express: "(SaaS)",
      //   standard: "(Subscriptions License)",
      //   enterprise: "(Perpetual License)",
      // ),
      EXModel(
        details: 'PD Management',
        detailsch: "จัดการบันทึกรายการข้อมูลส่วนบุคคล และการไหลของข้อมูล",
        express: "Check",
        standard: "Check",
        enterprise: "Check",
      ),
      EXModel(
        details: 'DPIA & Risk Management',
        detailsch: "บริหารความเสี่ยงและผลกระทบจากข้อมูลส่วนบุคคล",
        express: "Lock",
        standard: "Check",
        enterprise: "Check",
      ),
      EXModel(
        details: 'Cookies Consent',
        detailsch: "การขอความยินยอมจากเจ้าของข้อมูล และการบริหารจัดการคุ้กกี้",
        express: "Check",
        standard: "Check",
        enterprise: "Check",
      ),
      EXModel(
        details: 'Consent Management',
        detailsch: "การบริหารจัดการการให้ความยินยอม",
        express: "Check",
        standard: "Check",
        enterprise: "Check",
      ),
      EXModel(
        details: 'DATA Subject Right Management',
        detailsch: "บริหารการขอใช้สิทธิ์จากเจ้าของข้อมูลส่วนบุคคล",
        express: "Check",
        standard: "Check",
        enterprise: "Check",
      ),
      EXModel(
        details: 'DATA Breach',
        detailsch: "บริหารกรณีเกิดข้อมูลรั่วไหล",
        express: "Lock",
        standard: "Check",
        enterprise: "Check",
      ),
      EXModel(
        details: 'Audit & Gap Management',
        detailsch: "บริหารงานตรวจสอบ และการทำ GAP Analysis",
        express: "Lock",
        standard: "Check",
        enterprise: "Check",
      ),
      EXModel(
        details: 'Policy & Notices Management',
        detailsch: "บริหารการสื่อสารนโยบาย และประกาศความเป็นส่วนตัว",
        express: "Lock",
        standard: "Check",
        enterprise: "Check",
      ),
      EXModel(
        details: 'Data Discover',
        detailsch: "ค้นหาข้อมูลส่วนตัวในระบบสารสนเทศ",
        express: "Lock",
        standard: "Check",
        enterprise: "Check",
      ),
      EXModel(
        details: 'Executive Support System',
        detailsch: "บริหารงานและจัดการรายงานสำหรับผู้บริหาร",
        express: "Lock",
        standard: "Check",
        enterprise: "Check",
      ),
      EXModel(
        details: 'Legitimate Interest Assessment',
        detailsch: "การประเมินการนำฐานกฎหมายมาใช้",
        express: "Lock",
        standard: "Check",
        enterprise: "Check",
      ),
      EXModel(
        details: 'Concurrent User',
        detailsch: "จำนวนผู้เข้าใช้งานระบบร่วมกัน",
        express: "5",
        standard: "10",
        enterprise: "Unlimited",
      ),
      EXModel(
        details: 'Storage',
        detailsch: "พื้นที่จัดเก็บข้อมูล",
        express: "10GB",
        standard: "100GB",
        enterprise: "Unlimited",
      ),
      EXModel(
        details: 'Number of DATA Subject',
        detailsch: "จำนวนการจัดเก็บ-จัดส่งข้อมูลส่วนบุคคล",
        express: "~100,000",
        standard: "~ 1,000,000",
        enterprise: "~ 10,000,000",
      ),
      EXModel(
        details: 'ครบถ้วนตาม พ.ร.บ. คุ้มครองข้อมูลส่วนบุคคล',
        detailsch: "Personal Data Protection Act",
        express: "มาตรา 19, 20, 21, 23,\n26, 30, 37, 39, 41, 42",
        standard: "Check",
        enterprise: "Check",
      ),
      EXModel(
        details: 'On Cloud  / On-Premise',
        detailsch: "ระบบการติดตั้ง",
        express: "On Cloud",
        standard: "On Cloud/On-Premise",
        enterprise: "On Cloud/On-Premise",
      ),
      EXModel(
        details: 'Custom Software Development',
        detailsch: "พัฒนาเพิ่มเติมตามความต้องการ",
        express: "Cross",
        standard: "Cross",
        enterprise: "Check",
      ),
      EXModel(
        details: 'Multi-Tenant',
        detailsch: "รองรับการทำงานแบบ Multi-Tenant",
        express: "Cross",
        standard: "Cross",
        enterprise: "Check",
      ),
      EXModel(
        details: 'Product Support',
        detailsch: "การซัพพอร์ตผลิตภัณฑ์",
        express: "8x5",
        standard: "8x5",
        enterprise: "24x7",
      ),
      EXModel(
        details: 'API for Import & Export',
        detailsch: "ระบบการเชื่อมต่อข้อมูล",
        express: "Export Only",
        standard: "Import & Export",
        enterprise: "Import & Export",
      ),
      EXModel(
        details: '',
        detailsch: "",
        express: "Buy Now",
        standard: "Buy Now",
        enterprise: "Buy Now",
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
              width: 1328,
              height: 2313,
              child: Expanded(
                child: Table(
                  columnWidths: {
                    0: FlexColumnWidth(50),
                    1: FlexColumnWidth(26),
                    2: FlexColumnWidth(26),
                    3: FlexColumnWidth(26),
                  },
                  // border: TableBorder.all(),
                  children: [
                    TableRow(
                      decoration:
                          BoxDecoration(color: Color.fromARGB(0, 255, 193, 7)),
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 68),
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
                          padding: EdgeInsets.symmetric(horizontal: 13.5),
                          child: Container(
                            width: 250,
                            height: 62,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 75, 195,
                                  211), // set the background color
                              borderRadius: BorderRadius.circular(
                                  30), // set the border radius
                            ),
                            child: Center(
                              child: Text(
                                textAlign: TextAlign.center,
                                'Express',
                                style: GoogleFonts.ibmPlexSansThai(
                                    fontSize: 32,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 13.5),
                          child: Container(
                            width: 250,
                            height: 62,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 105, 173,
                                  221), // set the background color
                              borderRadius: BorderRadius.circular(
                                  30), // set the border radius
                            ),
                            child: Center(
                              child: Text(
                                textAlign: TextAlign.center,
                                'Standard',
                                style: GoogleFonts.ibmPlexSansThai(
                                    fontSize: 32,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 13.5),
                          child: Container(
                            width: 250,
                            height: 62,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 140, 140,
                                  207), // set the background color
                              borderRadius: BorderRadius.circular(
                                  30), // set the border radius
                            ),
                            child: Center(
                              child: Text(
                                textAlign: TextAlign.center,
                                'Enterprise',
                                style: GoogleFonts.ibmPlexSansThai(
                                    fontSize: 32,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        SizedBox(
                          width: 500,
                          height: 71,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18, bottom: 36),
                          child: Text(
                            '(SaaS)',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.ibmPlexSansThai(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 31, 31, 31)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18),
                          child: Text(
                            '(Subscriptions License)',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.ibmPlexSansThai(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 31, 31, 31)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18),
                          child: Text(
                            '(Perpeptual License)',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.ibmPlexSansThai(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 31, 31, 31)),
                          ),
                        ),
                      ],
                    ),
                    ...List.generate(table.length, (int index) {
                      return TableRow(
                        decoration: BoxDecoration(
                          // border: Border.all(width: 1),
                          color:
                              index % 2 == 0 ? Colors.white : Colors.grey[100],
                        ),
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Container(
                              width: 495,
                              height: index % 2 == 0 ? 100 : 93,
                              // borderRadius: index == table.length - 1
                              //     ? BorderRadius.only(
                              //         bottomLeft: Radius.circular(20),
                              //         bottomRight: Radius.circular(20))
                              //     : null,

                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 30,
                                    width: 458,
                                    child: Text(table[index].details,
                                        style: GoogleFonts.ibmPlexSansThai(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        )),
                                  ),
                                  Container(
                                    height: 30,
                                    width: 458,
                                    child: Text(table[index].detailsch,
                                        textAlign: TextAlign.start,
                                        style: GoogleFonts.ibmPlexSansThai(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          TableCell(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 5.0, right: 5),
                              child: table[index].express == 'Lock'
                                  ? Transform.translate(
                                      offset:
                                          Offset(0, index % 2 == 0 ? 27.5 : 25),
                                      child: SizedBox(
                                        height: 40,
                                        width: 30,
                                        child: Image(
                                            fit: BoxFit.fitHeight,
                                            image: AssetImage(
                                                "packages/lock.png")),
                                      ),
                                    )
                                  : table[index].express == 'Check'
                                      ? Transform.translate(
                                          offset: Offset(
                                              0, index % 2 == 0 ? 30 : 27.5),
                                          child: SizedBox(
                                            height: 40,
                                            width: 40,
                                            child: Image(
                                                fit: BoxFit.fitHeight,
                                                image: AssetImage(
                                                    "packages/check.png")),
                                          ),
                                        )
                                      : table[index].express == 'Cross'
                                          ? Transform.translate(
                                              offset: Offset(0,
                                                  index % 2 == 0 ? 30 : 27.5),
                                              child: SizedBox(
                                                height: 40,
                                                width: 40,
                                                child: Image(
                                                    fit: BoxFit.fitHeight,
                                                    image: AssetImage(
                                                        "packages/cross.png")),
                                              ),
                                            )
                                          : table[index].express == 'Buy Now'
                                              ? Container(
                                                  height: 148,
                                                  child: Center(
                                                    child: SizedBox(
                                                      width: 220,
                                                      height: 63,
                                                      child: OutlinedButton(
                                                        onPressed: () {},
                                                        style: OutlinedButton
                                                            .styleFrom(
                                                          side: BorderSide(
                                                            width: 2.0,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    75,
                                                                    195,
                                                                    211),
                                                          ),
                                                          backgroundColor:
                                                              Color.fromARGB(
                                                                  199,
                                                                  243,
                                                                  246,
                                                                  249),
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30.0),
                                                          ),
                                                        ),
                                                        child: Text(
                                                          'Buy Now',
                                                          style: GoogleFonts
                                                              .ibmPlexSansThai(
                                                                  fontSize: 24,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          0,
                                                                          0,
                                                                          0)),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              : Transform.translate(
                                                  offset: Offset(0,
                                                      index == 14 ? 22.5 : 30),
                                                  child: Text(
                                                    '${table[index].express}',
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts
                                                        .ibmPlexSansThai(
                                                            color: Colors.black,
                                                            fontSize:
                                                                index == 14
                                                                    ? 16
                                                                    : 20,
                                                            fontWeight:
                                                                index == 14
                                                                    ? FontWeight
                                                                        .w400
                                                                    : FontWeight
                                                                        .w700),
                                                  ),
                                                ),
                            ),
                          ),
                          TableCell(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 5.0, right: 5),
                              child: table[index].standard == 'Lock'
                                  ? Transform.translate(
                                      offset:
                                          Offset(0, index % 2 == 0 ? 27.5 : 25),
                                      child: SizedBox(
                                        height: 40,
                                        width: 30,
                                        child: Image(
                                            fit: BoxFit.fitHeight,
                                            image: AssetImage(
                                                "packages/lock.png")),
                                      ),
                                    )
                                  : table[index].standard == 'Check'
                                      ? Transform.translate(
                                          offset: Offset(
                                              0, index % 2 == 0 ? 30 : 27.5),
                                          child: SizedBox(
                                            height: 40,
                                            width: 40,
                                            child: Image(
                                                fit: BoxFit.fitHeight,
                                                image: AssetImage(
                                                    "packages/check.png")),
                                          ),
                                        )
                                      : table[index].standard == 'Cross'
                                          ? Transform.translate(
                                              offset: Offset(0,
                                                  index % 2 == 0 ? 30 : 27.5),
                                              child: SizedBox(
                                                height: 40,
                                                width: 40,
                                                child: Image(
                                                    fit: BoxFit.fitHeight,
                                                    image: AssetImage(
                                                        "packages/cross.png")),
                                              ),
                                            )
                                          : table[index].standard == 'Buy Now'
                                              ? Container(
                                                  height: 148,
                                                  child: Center(
                                                    child: SizedBox(
                                                      width: 220,
                                                      height: 63,
                                                      child: OutlinedButton(
                                                        onPressed: () {},
                                                        style: OutlinedButton
                                                            .styleFrom(
                                                          side: BorderSide(
                                                            width: 2.0,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    75,
                                                                    195,
                                                                    211),
                                                          ),
                                                          backgroundColor:
                                                              Color.fromARGB(
                                                                  199,
                                                                  243,
                                                                  246,
                                                                  249),
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30.0),
                                                          ),
                                                        ),
                                                        child: Text(
                                                          'Buy Now',
                                                          style: GoogleFonts
                                                              .ibmPlexSansThai(
                                                                  fontSize: 24,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          0,
                                                                          0,
                                                                          0)),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              : Transform.translate(
                                                  offset: Offset(0, 30),
                                                  child: Text(
                                                    '${table[index].standard}',
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts
                                                        .ibmPlexSansThai(
                                                            color: Colors.black,
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700),
                                                  ),
                                                ),
                            ),
                          ),
                          TableCell(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 5.0, right: 5),
                              child: table[index].enterprise == 'Lock'
                                  ? Transform.translate(
                                      offset:
                                          Offset(0, index % 2 == 0 ? 27.5 : 25),
                                      child: SizedBox(
                                        height: 40,
                                        width: 30,
                                        child: Image(
                                            fit: BoxFit.fitHeight,
                                            image: AssetImage(
                                                "packages/lock.png")),
                                      ),
                                    )
                                  : table[index].enterprise == 'Check'
                                      ? Transform.translate(
                                          offset: Offset(
                                              0, index % 2 == 0 ? 30 : 27.5),
                                          child: SizedBox(
                                            height: 40,
                                            width: 40,
                                            child: Image(
                                                fit: BoxFit.fitHeight,
                                                image: AssetImage(
                                                    "packages/check.png")),
                                          ),
                                        )
                                      : table[index].enterprise == 'Cross'
                                          ? Transform.translate(
                                              offset: Offset(0,
                                                  index % 2 == 0 ? 30 : 27.5),
                                              child: SizedBox(
                                                height: 40,
                                                width: 40,
                                                child: Image(
                                                    fit: BoxFit.fitHeight,
                                                    image: AssetImage(
                                                        "packages/cross.png")),
                                              ),
                                            )
                                          : table[index].enterprise == 'Buy Now'
                                              ? Container(
                                                  height: 148,
                                                  child: Center(
                                                    child: SizedBox(
                                                      width: 220,
                                                      height: 63,
                                                      child: OutlinedButton(
                                                        onPressed: () {},
                                                        style: OutlinedButton
                                                            .styleFrom(
                                                          side: BorderSide(
                                                            width: 2.0,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    75,
                                                                    195,
                                                                    211),
                                                          ),
                                                          backgroundColor:
                                                              Color.fromARGB(
                                                                  199,
                                                                  243,
                                                                  246,
                                                                  249),
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30.0),
                                                          ),
                                                        ),
                                                        child: Text(
                                                          'Buy Now',
                                                          style: GoogleFonts
                                                              .ibmPlexSansThai(
                                                                  fontSize: 24,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          0,
                                                                          0,
                                                                          0)),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              : Transform.translate(
                                                  offset: Offset(0, 30),
                                                  child: Text(
                                                    '${table[index].express}',
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts
                                                        .ibmPlexSansThai(
                                                            color: Colors.black,
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700),
                                                  ),
                                                ),
                            ),
                          ),
                        ],
                      );
                    }),
                  ],
                ),
              ),
            ),
            Container(
              height: 216,
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 63,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

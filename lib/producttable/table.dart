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

final price = Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(30.0),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 0,
        blurRadius: 1,
        offset: Offset(0, 4), // changes position of shadow
      ),
    ],
  ),
  width: 193,
  height: 50,
  child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 57, 128, 237),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      child: Text(
        'รับใบเสนอราคา',
        style: GoogleFonts.ibmPlexSansThai(
            fontSize: 20, fontWeight: FontWeight.w500),
      )),
);
final demo = Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(30.0),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 0,
        blurRadius: 1,
        offset: Offset(0, 4), // changes position of shadow
      ),
    ],
  ),
  width: 193,
  height: 53,
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
);

class _CompareTableState extends State<CompareTable> {
  @override
  Widget build(BuildContext context) {
    final List<EXModel> table = [
      EXModel(
        details: 'PD Management',
        detailsch: Responsive.isDesktop(context)
            ? "จัดการบันทึกรายการข้อมูลส่วนบุคคล และการไหลของข้อมูล"
            : "จัดการบันทึกรายการข้อมูลส่วนบุคคล\nและการไหลของข้อมูล",
        express: "Check",
        standard: "Check",
        enterprise: "Check",
      ),
      EXModel(
        details: 'DPIA & Risk Management',
        detailsch: Responsive.isDesktop(context)
            ? "บริหารความเสี่ยงและผลกระทบจากข้อมูลส่วนบุคคล"
            : "บริหารความเสี่ยงและผลกระทบจาก\nข้อมูลส่วนบุคคล",
        express: "Lock",
        standard: "Check",
        enterprise: "Check",
      ),
      EXModel(
        details: 'Cookies Consent',
        detailsch: Responsive.isDesktop(context)
            ? "การขอความยินยอมจากเจ้าของข้อมูล และการบริหารจัดการคุ้กกี้"
            : "การขอความยินยอมจากเจ้าของข้อมูล\nและการบริหารจัดการคุ้กกี้",
        express: "Check",
        standard: "Check",
        enterprise: "Check",
      ),
      EXModel(
        details: 'Consent Management',
        detailsch: !Responsive.isTablet(context)
            ? "การบริหารจัดการการให้ความยินยอม"
            : "การบริหารจัดการการให้ความ\nยินยอม",
        express: "Check",
        standard: "Check",
        enterprise: "Check",
      ),
      EXModel(
        details: Responsive.isDesktop(context)
            ? "DATA Subject Right Management"
            : 'DATA Subject Right\nManagement',
        detailsch: Responsive.isDesktop(context)
            ? "บริหารการขอใช้สิทธิ์จากเจ้าของข้อมูลส่วนบุคคล"
            : "บริหารการขอใช้สิทธิ์จากเจ้าของ\nข้อมูลส่วนบุคคล",
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
        detailsch: !Responsive.isTablet(context)
            ? "บริหารงานตรวจสอบ และการทำ GAP Analysis"
            : "บริหารงานตรวจสอบ และการทำ\nGAP Analysis",
        express: "Lock",
        standard: "Check",
        enterprise: "Check",
      ),
      EXModel(
        details: Responsive.isDesktop(context)
            ? "Policy & Notices Management"
            : 'Policy & Notices\nManagement',
        detailsch: Responsive.isDesktop(context)
            ? "บริหารการสื่อสารนโยบาย และประกาศความเป็นส่วนตัว"
            : "บริหารการสื่อสารนโยบาย\nและประกาศความเป็นส่วนตัว",
        express: "Lock",
        standard: "Check",
        enterprise: "Check",
      ),
      EXModel(
        details: 'Data Discover',
        detailsch: Responsive.isDesktop(context)
            ? "ค้นหาข้อมูลส่วนตัวในระบบสารสนเทศ"
            : "ค้นหาข้อมูลส่วนตัวในระบบ\nสารสนเทศ",
        express: "Lock",
        standard: "Check",
        enterprise: "Check",
      ),
      EXModel(
        details: 'Executive Support System',
        detailsch: Responsive.isDesktop(context)
            ? "บริหารงานและจัดการรายงานสำหรับผู้บริหาร"
            : Responsive.isTablet(context)
                ? "บริหารงานและจัดการรายงานสำหรับ\nผู้บริหาร"
                : "บริหารงานและจัดการรายงาน\nสำหรับผู้บริหาร",
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
        detailsch: Responsive.isDesktop(context)
            ? "จำนวนการจัดเก็บ-จัดส่งข้อมูลส่วนบุคคล"
            : "จำนวนการจัดเก็บ-จัดส่ง\nข้อมูลส่วนบุคคล",
        express: "~100,000",
        standard: "~ 1,000,000",
        enterprise: "~ 10,000,000",
      ),
      EXModel(
        details: Responsive.isDesktop(context)
            ? "ครบถ้วนตาม พ.ร.บ. คุ้มครองข้อมูลส่วนบุคคล"
            : 'ครบถ้วนตาม พ.ร.บ.\nคุ้มครองข้อมูลส่วนบุคคล',
        detailsch: "Personal Data Protection Act",
        express: Responsive.isDesktop(context)
            ? "มาตรา 19, 20, 21, 23,\n26, 30, 37, 39, 41, 42"
            : "มาตรา 19, 20,\n21, 23,26, 30,\n37, 39, 41, 42",
        standard: "Check",
        enterprise: "Check",
      ),
      EXModel(
        details: 'On Cloud  / On-Premise',
        detailsch: "ระบบการติดตั้ง",
        express: "On Cloud",
        standard: "On Cloud\nOn-Premise",
        enterprise: "On Cloud\nOn-Premise",
      ),
      EXModel(
        details: Responsive.isDesktop(context)
            ? "Custom Software Development"
            : 'Custom Software\nDevelopment',
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
        express: Responsive.isDesktop(context) ? "Export Only" : "Export\nOnly",
        standard: Responsive.isDesktop(context)
            ? "Import & Export"
            : "Import\n& Export",
        enterprise: Responsive.isDesktop(context)
            ? "Import & Export"
            : "Import\n& Export",
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
              height: Responsive.isDesktop(context)
                  ? 64
                  : Responsive.isTablet(context)
                      ? 41
                      : 17,
            ),
            Container(
              width: Responsive.isDesktop(context)
                  ? 1328
                  : Responsive.isTablet(context)
                      ? 704
                      : 359,
              // height: Responsive.isDesktop(context)
              //     ? 2313
              //     : Responsive.isTablet(context)
              //         ? 2570
              //         : 1136,
              child: Expanded(
                child: Table(
                  columnWidths: {
                    0: FlexColumnWidth(Responsive.isDesktop(context)
                        ? 52.3
                        : Responsive.isTablet(context)
                            ? 306
                            : 150.5),
                    1: FlexColumnWidth(Responsive.isDesktop(context)
                        ? 26.3
                        : Responsive.isTablet(context)
                            ? 135.5
                            : 63),
                    2: FlexColumnWidth(Responsive.isDesktop(context)
                        ? 26.3
                        : Responsive.isTablet(context)
                            ? 141
                            : 66),
                    3: FlexColumnWidth(Responsive.isDesktop(context)
                        ? 26.3
                        : Responsive.isTablet(context)
                            ? 140.5
                            : 64.5),
                  },
                  // border: TableBorder.all(),
                  children: [
                    TableRow(
                      decoration:
                          BoxDecoration(color: Color.fromARGB(0, 255, 193, 7)),
                      children: [
                        Padding(
                          padding: Responsive.isDesktop(context)
                              ? EdgeInsets.only(right: 91)
                              : Responsive.isTablet(context)
                                  ? EdgeInsets.only(left: 7, right: 35)
                                  : EdgeInsets.only(left: 6, right: 26.5),
                          child: Container(
                            width: Responsive.isDesktop(context)
                                ? 423
                                : Responsive.isTablet(context)
                                    ? 257
                                    : 118,
                            height: Responsive.isDesktop(context)
                                ? 61
                                : Responsive.isTablet(context)
                                    ? 46
                                    : 27,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: !Responsive.isMobile(context) ? 3.0 : 1,
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
                                    fontSize: Responsive.isDesktop(context)
                                        ? 32
                                        : Responsive.isTablet(context)
                                            ? 20
                                            : 10,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 75, 195, 211)),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: Responsive.isDesktop(context)
                              ? EdgeInsets.only(right: 13.5)
                              : Responsive.isTablet(context)
                                  ? EdgeInsets.only(right: 5.5)
                                  : EdgeInsets.only(right: 3),
                          child: Container(
                            width: Responsive.isDesktop(context)
                                ? 250
                                : Responsive.isTablet(context)
                                    ? 130
                                    : 65,
                            height: Responsive.isDesktop(context)
                                ? 73
                                : Responsive.isTablet(context)
                                    ? 41
                                    : 20,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 110, 193,
                                  208), // set the background color
                              borderRadius: BorderRadius.circular(
                                  30), // set the border radius
                            ),
                            child: Center(
                              child: Text(
                                textAlign: TextAlign.center,
                                'Express',
                                style: GoogleFonts.ibmPlexSansThai(
                                    fontSize: Responsive.isDesktop(context)
                                        ? 32
                                        : Responsive.isTablet(context)
                                            ? 20
                                            : 10,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: Responsive.isDesktop(context)
                              ? EdgeInsets.symmetric(horizontal: 13.5)
                              : Responsive.isTablet(context)
                                  ? EdgeInsets.symmetric(horizontal: 5.5)
                                  : EdgeInsets.symmetric(horizontal: 3),
                          child: Container(
                            width: Responsive.isDesktop(context)
                                ? 250
                                : Responsive.isTablet(context)
                                    ? 130
                                    : 65,
                            height: Responsive.isDesktop(context)
                                ? 73
                                : Responsive.isTablet(context)
                                    ? 41
                                    : 20,
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
                                    fontSize: Responsive.isDesktop(context)
                                        ? 32
                                        : Responsive.isTablet(context)
                                            ? 20
                                            : 10,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: Responsive.isDesktop(context)
                              ? EdgeInsets.only(left: 13.5)
                              : Responsive.isTablet(context)
                                  ? EdgeInsets.only(left: 5.5, right: 5)
                                  : EdgeInsets.only(left: 3, right: 1.5),
                          child: Container(
                            width: Responsive.isDesktop(context)
                                ? 250
                                : Responsive.isTablet(context)
                                    ? 130
                                    : 65,
                            height: Responsive.isDesktop(context)
                                ? 73
                                : Responsive.isTablet(context)
                                    ? 41
                                    : 20,
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
                                    fontSize: Responsive.isDesktop(context)
                                        ? 32
                                        : Responsive.isTablet(context)
                                            ? 20
                                            : 10,
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
                          height: Responsive.isDesktop(context)
                              ? 63
                              : Responsive.isTablet(context)
                                  ? 126
                                  : 41,
                        ),
                        Padding(
                          padding: Responsive.isDesktop(context)
                              ? EdgeInsets.only(right: 13.5, top: 18)
                              : Responsive.isTablet(context)
                                  ? EdgeInsets.only(right: 6.5, top: 18)
                                  : EdgeInsets.only(right: 3, top: 4),
                          child: Text(
                            '(SaaS)',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.ibmPlexSansThai(
                                height: Responsive.isDesktop(context)
                                    ? null
                                    : 1.1875,
                                fontSize: Responsive.isDesktop(context)
                                    ? 20
                                    : Responsive.isTablet(context)
                                        ? 16
                                        : 8,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 31, 31, 31)),
                          ),
                        ),
                        Padding(
                          padding: Responsive.isDesktop(context)
                              ? EdgeInsets.only(
                                  left: 13.5, right: 13.5, top: 18)
                              : Responsive.isTablet(context)
                                  ? EdgeInsets.only(
                                      left: 6.5, right: 6.5, top: 18)
                                  : EdgeInsets.only(
                                      left: 3,
                                      right: 3,
                                    ),
                          child: Text(
                            '(Subscriptions License)',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.ibmPlexSansThai(
                                height: Responsive.isDesktop(context)
                                    ? null
                                    : 1.1875,
                                fontSize: Responsive.isDesktop(context)
                                    ? 20
                                    : Responsive.isTablet(context)
                                        ? 16
                                        : 8,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 31, 31, 31)),
                          ),
                        ),
                        Padding(
                          padding: Responsive.isDesktop(context)
                              ? EdgeInsets.only(left: 13.5, top: 18)
                              : Responsive.isTablet(context)
                                  ? EdgeInsets.only(left: 6.5, top: 18)
                                  : EdgeInsets.only(
                                      left: 3,
                                      right: 1.5,
                                    ),
                          child: Text(
                            '(Perpeptual License)',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.ibmPlexSansThai(
                                height: Responsive.isDesktop(context)
                                    ? null
                                    : 1.1875,
                                fontSize: Responsive.isDesktop(context)
                                    ? 20
                                    : Responsive.isTablet(context)
                                        ? 16
                                        : 8,
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
                          color: index % 2 == 0
                              ? Colors.white
                              : Color.fromARGB(255, 241, 241, 243),
                        ),
                        children: [
                          Padding(
                            padding: !Responsive.isMobile(context)
                                ? EdgeInsets.only(left: 17)
                                : EdgeInsets.only(left: 10),
                            child: Container(
                              // color: Colors.amber,
                              width: 505,
                              height: index % 2 == 0
                                  ? Responsive.isDesktop(context)
                                      ? 100
                                      : Responsive.isTablet(context)
                                          ? index == 4
                                              ? 159
                                              : 119
                                          : index == 4
                                              ? 60
                                              : 54
                                  : Responsive.isDesktop(context)
                                      ? 93
                                      : Responsive.isTablet(context)
                                          ? index == 7
                                              ? 126
                                              : 116
                                          : index == 7
                                              ? 53
                                              : 47,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(table[index].details,
                                      style: GoogleFonts.ibmPlexSansThai(
                                        height: 1.1,
                                        fontSize: !Responsive.isMobile(context)
                                            ? 20
                                            : 10,
                                        fontWeight: FontWeight.w600,
                                      )),
                                  Container(
                                    width: 505,
                                    child: Text(table[index].detailsch,
                                        textAlign: TextAlign.start,
                                        style: GoogleFonts.ibmPlexSansThai(
                                          height: 1.1,
                                          fontSize:
                                              !Responsive.isMobile(context)
                                                  ? 18
                                                  : 8,
                                          fontWeight: FontWeight.w400,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                              padding: Responsive.isDesktop(context)
                                  ? EdgeInsets.only(right: 16.6)
                                  : Responsive.isTablet(context)
                                      ? EdgeInsets.only(right: 5)
                                      : EdgeInsets.only(right: 3),
                              child: Container(
                                height: index == table.length - 1
                                    ? Responsive.isDesktop(context)
                                        ? 148
                                        : Responsive.isTablet(context)
                                            ? 85
                                            : 44
                                    : index % 2 == 0
                                        ? Responsive.isDesktop(context)
                                            ? 100
                                            : Responsive.isTablet(context)
                                                ? index == 4
                                                    ? 159
                                                    : 119
                                                : index == 4
                                                    ? 60
                                                    : 54
                                        : Responsive.isDesktop(context)
                                            ? 93
                                            : Responsive.isTablet(context)
                                                ? index == 7
                                                    ? 126
                                                    : 116
                                                : index == 7
                                                    ? 53
                                                    : 47,
                                child: Center(
                                  child: table[index].express == "Lock" ||
                                          table[index].express == "Check" ||
                                          table[index].express == "Cross"
                                      ? SizedBox(
                                          height: !Responsive.isMobile(context)
                                              ? 40
                                              : 15,
                                          child: Image(
                                              fit: BoxFit.fitHeight,
                                              image: AssetImage(table[index]
                                                          .express ==
                                                      "Check"
                                                  ? "packages/check.png"
                                                  : table[index].express ==
                                                          "Cross"
                                                      ? "packages/cross.png"
                                                      : "packages/lock.png")),
                                        )
                                      : table[index].express == "Buy Now"
                                          ? Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30.0),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.5),
                                                    spreadRadius: 0,
                                                    blurRadius: 1,
                                                    offset: Offset(0,
                                                        4), // changes position of shadow
                                                  ),
                                                ],
                                              ),
                                              width: Responsive.isDesktop(
                                                      context)
                                                  ? 192
                                                  : Responsive.isTablet(context)
                                                      ? 113
                                                      : 57,
                                              height: Responsive.isDesktop(
                                                      context)
                                                  ? 64
                                                  : Responsive.isTablet(context)
                                                      ? 46
                                                      : 20,
                                              child: OutlinedButton(
                                                onPressed: () {},
                                                style: OutlinedButton.styleFrom(
                                                  side: BorderSide(
                                                    width: Responsive.isDesktop(
                                                            context)
                                                        ? 3.0
                                                        : Responsive.isTablet(
                                                                context)
                                                            ? 2
                                                            : 1,
                                                    color: Color.fromARGB(
                                                        255, 75, 195, 211),
                                                  ),
                                                  backgroundColor:
                                                      Color.fromARGB(
                                                          255, 255, 255, 255),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius
                                                        .circular(Responsive
                                                                .isDesktop(
                                                                    context)
                                                            ? 30.0
                                                            : Responsive
                                                                    .isTablet(
                                                                        context)
                                                                ? 20
                                                                : 30),
                                                  ),
                                                ),
                                                child: FittedBox(
                                                  fit: BoxFit.none,
                                                  child: Text(
                                                    'Buy Now',
                                                    style: GoogleFonts
                                                        .ibmPlexSansThai(
                                                            fontSize: !Responsive
                                                                    .isMobile(
                                                                        context)
                                                                ? 20
                                                                : 8,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    75,
                                                                    195,
                                                                    211)),
                                                  ),
                                                ),
                                              ),
                                            )
                                          : Text(
                                              '${table[index].express}',
                                              textAlign: TextAlign.center,
                                              style:
                                                  GoogleFonts.ibmPlexSansThai(
                                                      color: Colors.black,
                                                      fontSize: index == 14
                                                          ? Responsive
                                                                  .isDesktop(
                                                                      context)
                                                              ? 16
                                                              : Responsive
                                                                      .isTablet(
                                                                          context)
                                                                  ? 16
                                                                  : 7
                                                          : Responsive
                                                                  .isDesktop(
                                                                      context)
                                                              ? 20
                                                              : Responsive
                                                                      .isTablet(
                                                                          context)
                                                                  ? 16
                                                                  : 8,
                                                      fontWeight: index == 14
                                                          ? FontWeight.w500
                                                          : FontWeight.w700),
                                            ),
                                ),
                              )),
                          Padding(
                              padding: Responsive.isDesktop(context)
                                  ? EdgeInsets.only(left: 8.3, right: 8.3)
                                  : Responsive.isTablet(context)
                                      ? EdgeInsets.only(left: 5, right: 1)
                                      : EdgeInsets.only(
                                          left: 3,
                                        ),
                              child: Container(
                                height: index == table.length - 1
                                    ? Responsive.isDesktop(context)
                                        ? 148
                                        : Responsive.isTablet(context)
                                            ? 85
                                            : 44
                                    : index % 2 == 0
                                        ? Responsive.isDesktop(context)
                                            ? 100
                                            : Responsive.isTablet(context)
                                                ? index == 4
                                                    ? 159
                                                    : 119
                                                : index == 4
                                                    ? 60
                                                    : 54
                                        : Responsive.isDesktop(context)
                                            ? 93
                                            : Responsive.isTablet(context)
                                                ? index == 7
                                                    ? 126
                                                    : 116
                                                : index == 7
                                                    ? 53
                                                    : 47,
                                child: Center(
                                  child: table[index].standard == "Lock" ||
                                          table[index].standard == "Check" ||
                                          table[index].standard == "Cross"
                                      ? SizedBox(
                                          height: !Responsive.isMobile(context)
                                              ? 40
                                              : 15,
                                          child: Image(
                                              fit: BoxFit.fitHeight,
                                              image: AssetImage(table[index]
                                                          .standard ==
                                                      "Check"
                                                  ? "packages/check.png"
                                                  : table[index].standard ==
                                                          "Cross"
                                                      ? "packages/cross.png"
                                                      : "packages/lock.png")),
                                        )
                                      : table[index].standard == "Buy Now"
                                          ? Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30.0),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.5),
                                                    spreadRadius: 0,
                                                    blurRadius: 1,
                                                    offset: Offset(0,
                                                        4), // changes position of shadow
                                                  ),
                                                ],
                                              ),
                                              width: Responsive.isDesktop(
                                                      context)
                                                  ? 192
                                                  : Responsive.isTablet(context)
                                                      ? 113
                                                      : 57,
                                              height: Responsive.isDesktop(
                                                      context)
                                                  ? 64
                                                  : Responsive.isTablet(context)
                                                      ? 46
                                                      : 20,
                                              child: OutlinedButton(
                                                onPressed: () {},
                                                style: OutlinedButton.styleFrom(
                                                  side: BorderSide(
                                                    width: Responsive.isDesktop(
                                                            context)
                                                        ? 3.0
                                                        : Responsive.isTablet(
                                                                context)
                                                            ? 2
                                                            : 1,
                                                    color: Color.fromARGB(
                                                        255, 75, 195, 211),
                                                  ),
                                                  backgroundColor:
                                                      Color.fromARGB(
                                                          255, 255, 255, 255),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius
                                                        .circular(Responsive
                                                                .isDesktop(
                                                                    context)
                                                            ? 30.0
                                                            : Responsive
                                                                    .isTablet(
                                                                        context)
                                                                ? 20
                                                                : 30),
                                                  ),
                                                ),
                                                child: FittedBox(
                                                  fit: BoxFit.none,
                                                  child: Text(
                                                    'Buy Now',
                                                    style: GoogleFonts
                                                        .ibmPlexSansThai(
                                                            fontSize: !Responsive
                                                                    .isMobile(
                                                                        context)
                                                                ? 20
                                                                : 8,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    75,
                                                                    195,
                                                                    211)),
                                                  ),
                                                ),
                                              ),
                                            )
                                          : Text(
                                              '${table[index].standard}',
                                              textAlign: TextAlign.center,
                                              style:
                                                  GoogleFonts.ibmPlexSansThai(
                                                      color: Colors.black,
                                                      fontSize: Responsive
                                                              .isDesktop(
                                                                  context)
                                                          ? 20
                                                          : Responsive.isTablet(
                                                                  context)
                                                              ? 16
                                                              : 8,
                                                      fontWeight:
                                                          FontWeight.w700),
                                            ),
                                ),
                              )),
                          Padding(
                              padding: Responsive.isDesktop(context)
                                  ? EdgeInsets.only(left: 16.6)
                                  : Responsive.isTablet(context)
                                      ? EdgeInsets.only(
                                          left: 9,
                                        )
                                      : EdgeInsets.only(left: 3, right: 1.5),
                              child: Container(
                                height: index == table.length - 1
                                    ? Responsive.isDesktop(context)
                                        ? 148
                                        : Responsive.isTablet(context)
                                            ? 85
                                            : 44
                                    : index % 2 == 0
                                        ? Responsive.isDesktop(context)
                                            ? 100
                                            : Responsive.isTablet(context)
                                                ? index == 4
                                                    ? 159
                                                    : 119
                                                : index == 4
                                                    ? 60
                                                    : 54
                                        : Responsive.isDesktop(context)
                                            ? 93
                                            : Responsive.isTablet(context)
                                                ? index == 7
                                                    ? 126
                                                    : 116
                                                : index == 7
                                                    ? 53
                                                    : 47,
                                child: Center(
                                  child: table[index].enterprise == "Lock" ||
                                          table[index].enterprise == "Check" ||
                                          table[index].enterprise == "Cross"
                                      ? SizedBox(
                                          height: !Responsive.isMobile(context)
                                              ? 40
                                              : 15,
                                          child: Image(
                                              fit: BoxFit.fitHeight,
                                              image: AssetImage(table[index]
                                                          .enterprise ==
                                                      "Check"
                                                  ? "packages/check.png"
                                                  : table[index].enterprise ==
                                                          "Cross"
                                                      ? "packages/cross.png"
                                                      : "packages/lock.png")),
                                        )
                                      : table[index].enterprise == "Buy Now"
                                          ? Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30.0),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.5),
                                                    spreadRadius: 0,
                                                    blurRadius: 1,
                                                    offset: Offset(0,
                                                        4), // changes position of shadow
                                                  ),
                                                ],
                                              ),
                                              width: Responsive.isDesktop(
                                                      context)
                                                  ? 192
                                                  : Responsive.isTablet(context)
                                                      ? 113
                                                      : 57,
                                              height: Responsive.isDesktop(
                                                      context)
                                                  ? 64
                                                  : Responsive.isTablet(context)
                                                      ? 46
                                                      : 20,
                                              child: OutlinedButton(
                                                onPressed: () {},
                                                style: OutlinedButton.styleFrom(
                                                  side: BorderSide(
                                                    width: Responsive.isDesktop(
                                                            context)
                                                        ? 3.0
                                                        : Responsive.isTablet(
                                                                context)
                                                            ? 2
                                                            : 1,
                                                    color: Color.fromARGB(
                                                        255, 75, 195, 211),
                                                  ),
                                                  backgroundColor:
                                                      Color.fromARGB(
                                                          255, 255, 255, 255),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius
                                                        .circular(Responsive
                                                                .isDesktop(
                                                                    context)
                                                            ? 30.0
                                                            : Responsive
                                                                    .isTablet(
                                                                        context)
                                                                ? 20
                                                                : 30),
                                                  ),
                                                ),
                                                child: FittedBox(
                                                  fit: BoxFit.none,
                                                  child: Text(
                                                    'Buy Now',
                                                    style: GoogleFonts
                                                        .ibmPlexSansThai(
                                                            fontSize: !Responsive
                                                                    .isMobile(
                                                                        context)
                                                                ? 20
                                                                : 8,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    75,
                                                                    195,
                                                                    211)),
                                                  ),
                                                ),
                                              ),
                                            )
                                          : Text(
                                              '${table[index].enterprise}',
                                              textAlign: TextAlign.center,
                                              style:
                                                  GoogleFonts.ibmPlexSansThai(
                                                      color: Colors.black,
                                                      fontSize: Responsive
                                                              .isDesktop(
                                                                  context)
                                                          ? 20
                                                          : Responsive.isTablet(
                                                                  context)
                                                              ? 16
                                                              : 8,
                                                      fontWeight:
                                                          FontWeight.w700),
                                            ),
                                ),
                              )),
                        ],
                      );
                    }),
                  ],
                ),
              ),
            ),
            SizedBox(height: !Responsive.isMobile(context) ? 30 : 35),
            Container(
              width: 1440,
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
                    height: !Responsive.isMobile(context) ? 63 : 27,
                  ),
                  Responsive.isDesktop(context)
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
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
                                  textAlign: TextAlign.center,
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
                            SizedBox(width: 110),
                            price,
                            SizedBox(width: 26),
                            demo
                          ],
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              Responsive.isTablet(context)
                                  ? "รับคำปรึกษาจากทีมงานผู้เชี่ยวชาญของเรา"
                                  : "รับคำปรึกษาจากทีมงาน\nผู้เชี่ยวชาญของเรา",
                              style: GoogleFonts.ibmPlexSans(
                                  fontSize:
                                      Responsive.isTablet(context) ? 32 : 24,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 5, 45, 97)),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: Responsive.isTablet(context) ? null : 10,
                            ),
                            Text(
                              Responsive.isTablet(context)
                                  ? "ให้เราช่วยวางแผนและให้คำแนะนำที่ดีที่สุดสำหรับองค์กรของคุณ"
                                  : "ให้เราช่วยวางแผนและให้คำแนะนำ\nที่ดีที่สุดสำหรับองค์กรของคุณ",
                              style: GoogleFonts.ibmPlexSans(
                                  fontSize:
                                      Responsive.isTablet(context) ? 24 : 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 57, 128, 237)),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: Responsive.isTablet(context) ? 30 : 36,
                            ),
                            Responsive.isTablet(context)
                                ? Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      price,
                                      SizedBox(width: 26),
                                      demo,
                                    ],
                                  )
                                : Column(
                                    children: [
                                      price,
                                      SizedBox(height: 20),
                                      demo,
                                    ],
                                  ),
                          ],
                        ),
                  SizedBox(
                    height: Responsive.isDesktop(context)
                        ? 83
                        : Responsive.isTablet(context)
                            ? 74.5
                            : 40,
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

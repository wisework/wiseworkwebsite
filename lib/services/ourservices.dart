import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/responsive.dart';

class OurservicesPage extends StatefulWidget {
  @override
  _OurservicesPageState createState() => _OurservicesPageState();
}

class _OurservicesPageState extends State<OurservicesPage> {
  @override
  Widget build(BuildContext context) {
    List<String> pdpalist = [
      "ควบคุมกระบวนการด้วยระบบ บริหารงานผ่านระบบทั้งหมด\nได้อย่างมีประสิทธิภาพ ควบคุมกระบวนการได้ถูกต้องตามกฎหมาย",
      "จัดเก็บข้อมูลในระบบ รวบรวม consent ไว้ที่เดียว\nจัดการได้ง่าย เป็นปัจจุบัน มั่นใจว่านำไปใช้ตามวัตถุประสงค์",
      "ประเมิน ติดตามความเสี่ยง ตรวจสอบอย่างเป็นระบบ\nพร้อมบันทึกข้อมูลสำคัญที่จำเป็นในคดีความ เมื่อต้องใช้ในชั้นศาล",
      "บันทึกการขอใช้สิทธิฯ และการเปลี่ยนแปลงแก้ไขอย่างละเอียด\nรองรับการตรวจสอบจากสำนักงานคุ้มครองข้อมูลส่วนบุคคล"
    ];

    var pdpa = Container(
      // color: Colors.purpleAccent,
      width: 540,
      height: 300,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: pdpalist.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  minLeadingWidth: 0,
                  minVerticalPadding: 0,
                  dense: true,
                  visualDensity: VisualDensity(vertical: -4, horizontal: -4),
                  leading: Transform.translate(
                    offset: Offset(0, 0),
                    child: SizedBox(
                        width: 19,
                        height: 13,
                        child: Image.asset("assets/customer/black-check.png")),
                  ),
                  title: Transform.translate(
                    offset: Offset(0, 0),
                    child: Text(
                      pdpalist[index],
                      style: GoogleFonts.ibmPlexSansThai(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                )
              ],
            );
          }),
    );

    return Center(
      child: Column(
        children: [
          Container(
            width: 1440,
            height: 70,
            color: Color.fromARGB(255, 232, 242, 254),
          ),
          Container(
            width: 1440,
            height: 670,
            // color: Colors.amber,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 60, left: 135),
                          child: Container(
                            width: 502,
                            // color: Colors.indigo,
                            child: Text(
                              "PDPA\nManagement Platform",
                              style: GoogleFonts.ibmPlexSansThai(
                                  fontSize: 48,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 31, 40, 79)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 44, left: 157),
                          child: Container(
                            // width: 662,
                            // color: Colors.amber,
                            child: Text(
                              "Software ที่ถูกออกแบบมา โดยรวมข้อมูลเข้าสู่ศูนย์กลาง\nเพื่อการจัดการอย่างเป็นระบบ ครบทุกขั้นตอนใน Platform เดียว ",
                              style: GoogleFonts.ibmPlexSansThai(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 74, 195, 212)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15, left: 140),
                          child: pdpa,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 120),
                          child: Container(
                              width: 729,
                              height: 543,
                              // color: Colors.indigo,
                              child: Image.asset("assets/customer/laptop.png")),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "จัดการ PDPA อย่างเป็นระบบ ด้วย wisework",
                    style: GoogleFonts.ibmPlexSansThai(
                        fontSize: 48.36,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 5, 45, 97)),
                  )
                ],
              ),
            ),
          ),
          Container(
            child: Text(
              "“การเก็บ ใช้ เปิดเผย และถ่ายโอนข้อมูลส่วนบุคคล ต้องได้รับความยินยอมจากเจ้าของข้อมูล\nโดยข้อยกเว้นจะมีเหตุอื่นที่ได้รับอนุญาตตามกฎหมาย”\n\nพร้อมให้คำปรึกษา วางแผน และวางระบบตามกฎหมาย สำหรับองค์กรและธุรกิจต่างๆ\nเติมเต็มให้ครบทั้ง People Process และ Technology มั่นใจได้ว่า เป็นไปตามที่กฎหมายกำหนด",
              style: GoogleFonts.ibmPlexSansThai(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 50),
                child: Container(
                    width: 705,
                    height: 705,
                    child: Image.asset("assets/customer/process.png")),
              ),
            ],
          )
        ],
      ),
    );
  }
}

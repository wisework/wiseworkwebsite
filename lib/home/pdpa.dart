import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pdpa extends StatelessWidget {
  const Pdpa({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
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
                          padding:
                              const EdgeInsets.only(top: 67.9, bottom: 41.1),
                          child: SizedBox(
                            height: 79,
                            width: 1260,
                            child: Text(
                              "wiswork PDPA Management Platform",
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
                          padding: const EdgeInsets.only(top: 40.3, bottom: 61),
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
                                  borderRadius: BorderRadius.circular(30.0)),
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
              )),
        ],
      ),
    );
  }
}

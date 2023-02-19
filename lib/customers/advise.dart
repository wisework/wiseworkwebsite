import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/responsive.dart';

class Advise extends StatefulWidget {
  @override
  _Advise createState() => _Advise();
}

class _Advise extends State<Advise> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
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
                        padding:
                            const EdgeInsets.only(top: 167.39, left: 124.74),
                        child: Container(
                          height: 600,
                          width: 583.78,
                          // color: Colors.amber,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                      color: Color.fromARGB(255, 5, 45, 97)),
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
                                      color: Colors.black),
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
                                    color: Color.fromARGB(255, 75, 195, 211),
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
                                              Color.fromARGB(255, 75, 195, 211),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30.0)),
                                        ),
                                        child: Text(
                                          'รับคำปรึกษา',
                                          style: GoogleFonts.ibmPlexSansThai(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 66.45,
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
                        padding:
                            const EdgeInsets.only(top: 100.03, left: 37.92),
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
                      left: 316,
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
                        left: 316,
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
                      left: 944,
                      top: 79,
                      child: SizedBox(
                        width: 193,
                        height: 48,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 75, 195, 211),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)),
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
        ],
      ),
    );
  }
}
